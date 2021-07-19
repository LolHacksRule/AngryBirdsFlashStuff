package org.flexunit.internals.dependency
{
   import flash.events.Event;
   import org.flexunit.token.AsyncCoreStartupToken;
   
   public class ExternalRunnerDependencyWatcher implements IExternalRunnerDependencyWatcher
   {
       
      
      private var _token:AsyncCoreStartupToken;
      
      private var _pendingCount:int;
      
      public function ExternalRunnerDependencyWatcher()
      {
         super();
         this._token = new AsyncCoreStartupToken();
      }
      
      public function get token() : AsyncCoreStartupToken
      {
         return this._token;
      }
      
      public function get allDependenciesResolved() : Boolean
      {
         return this.pendingCount == 0;
      }
      
      public function get pendingCount() : int
      {
         return this._pendingCount;
      }
      
      protected function monitorForDependency(dr:IExternalDependencyResolver) : void
      {
         dr.addEventListener(ExternalDependencyResolver.ALL_DEPENDENCIES_FOR_RUNNER_RESOLVED,this.handleRunnerReady);
         dr.addEventListener(ExternalDependencyResolver.DEPENDENCY_FOR_RUNNER_FAILED,this.handleRunnerFailed);
      }
      
      protected function cleanupListeners(dr:IExternalDependencyResolver) : void
      {
         dr.removeEventListener(ExternalDependencyResolver.ALL_DEPENDENCIES_FOR_RUNNER_RESOLVED,this.handleRunnerReady);
         dr.removeEventListener(ExternalDependencyResolver.DEPENDENCY_FOR_RUNNER_FAILED,this.handleRunnerFailed);
      }
      
      protected function sendReadyNotification() : void
      {
         this.token.sendReady();
      }
      
      protected function handleRunnerReady(event:Event) : void
      {
         var dr:IExternalDependencyResolver = event.target as IExternalDependencyResolver;
         this.cleanupListeners(dr);
         --this._pendingCount;
         if(this.allDependenciesResolved)
         {
            this.sendReadyNotification();
         }
      }
      
      protected function handleRunnerFailed(event:Event) : void
      {
         var dr:IExternalDependencyResolver = event.target as IExternalDependencyResolver;
         this.cleanupListeners(dr);
         --this._pendingCount;
         if(this.allDependenciesResolved)
         {
            this.sendReadyNotification();
         }
      }
      
      public function watchDependencyResolver(dr:IExternalDependencyResolver) : void
      {
         if(dr && !dr.ready)
         {
            ++this._pendingCount;
            this.monitorForDependency(dr);
         }
      }
   }
}
