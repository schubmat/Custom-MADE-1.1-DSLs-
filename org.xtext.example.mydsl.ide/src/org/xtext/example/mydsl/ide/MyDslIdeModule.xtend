/*
 * generated by Xtext unknown
 */
package org.xtext.example.mydsl.ide

import org.eclipse.xtext.ide.editor.contentassist.IdeContentProposalProvider
import org.eclipse.xtext.ide.server.codeActions.ICodeActionService
import org.eclipse.xtext.ide.server.commands.IExecutableCommandService
import org.eclipse.xtext.ide.server.hover.HoverService
import org.xtext.example.mydsl.ide.contentassist.MyDslIdeContentProposalProvider

/**
 * Use this class to register ide components.
 */
class MyDslIdeModule extends AbstractMyDslIdeModule {
	
	def Class<? extends HoverService> bindHoverService() {
		EclipseLikeHoverService
	}
	
	def Class<? extends IExecutableCommandService> bindIExecutableCommandService() {
		return CommandService
	}
	
	def Class<? extends ICodeActionService> bindICodeActionService() {
		return MyDslCodeActionService
	}
	
	def Class<? extends IdeContentProposalProvider> bindIdeContentProposalProvider() {
		MyDslIdeContentProposalProvider
	}
}