package org.flexunit.runner.notification.async
{
   import flash.events.Event;
   import org.flexunit.runner.notification.IAsyncCompletionRunListener;
   import org.flexunit.runner.notification.IAsyncStartupRunListener;
   import org.flexunit.runner.notification.IRunNotifier;
   import org.flexunit.token.AsyncCoreStartupToken;
   
   public class AsyncListenerWatcher
   {
      
      public static const LISTENER_READY:String = "listenerReady";
      
      public static const LISTENER_FAILED:String = "listenerFailed";
      
      public static const LISTENER_COMPLETE:String = "listenerComplete";
       
      
      private var _pendingStartupCount:int;
      
      private var _totalStartUpCount:int;
      
      private var notifier:IRunNotifier;
      
      private var _startToken:AsyncCoreStartupToken;
      
      private var _completeToken:AsyncCoreStartupToken;
      
      public function AsyncListenerWatcher(notifier:IRunNotifier, logger:*)
      {
         super();
         this.notifier = notifier;
         this._startToken = new AsyncCoreStartupToken();
      }
      
      public function get startUpToken() : AsyncCoreStartupToken
      {
         return this._startToken;
      }
      
      public function get completeToken() : AsyncCoreStartupToken
      {
         return this._completeToken;
      }
      
      public function get allListenersReady() : Boolean
      {
         return this.pendingCount == 0;
      }
      
      public function get allListenersComplete() : Boolean
      {
         return this.pendingCount == 0;
      }
      
      public function get pendingCount() : int
      {
         return this._pendingStartupCount;
      }
      
      public function get totalCount() : int
      {
         return this._totalStartUpCount;
      }
      
      protected function monitorForAsyncStartup(listener:IAsyncStartupRunListener) : void
      {
         listener.addEventListener(LISTENER_READY,this.handleListenerReady);
         listener.addEventListener(LISTENER_FAILED,this.handleListenerFailed);
      }
      
      protected function cleanupStartupListeners(listener:IAsyncStartupRunListener) : void
      {
         listener.removeEventListener(LISTENER_READY,this.handleListenerReady);
         listener.removeEventListener(LISTENER_FAILED,this.handleListenerFailed);
      }
      
      protected function sendReadyNotification() : void
      {
         this.startUpToken.sendReady();
      }
      
      protected function handleListenerReady(event:Event) : void
      {
         var asyncListener:IAsyncStartupRunListener = event.target as IAsyncStartupRunListener;
         this.cleanupStartupListeners(asyncListener);
         --this._pendingStartupCount;
         if(this.allListenersReady)
         {
            this.sendReadyNotification();
         }
      }
      
      protected function handleListenerFailed(event:Event) : void
      {
         var asyncListener:IAsyncStartupRunListener = event.target as IAsyncStartupRunListener;
         this.cleanupStartupListeners(asyncListener);
         --this._pendingStartupCount;
         this.notifier.removeListener(asyncListener);
         if(this.allListenersReady)
         {
            this.sendReadyNotification();
         }
      }
      
      public function unwatchListener(listener:IAsyncStartupRunListener) : void
      {
         var startListener:IAsyncStartupRunListener = null;
         var completeListener:IAsyncCompletionRunListener = null;
         if(listener is IAsyncStartupRunListener)
         {
            --this._totalStartUpCount;
            startListener = listener as IAsyncStartupRunListener;
            if(!startListener.ready)
            {
               --this._pendingStartupCount;
               this.cleanupStartupListeners(startListener);
            }
         }
         if(listener is IAsyncCompletionRunListener)
         {
            completeListener = listener as IAsyncCompletionRunListener;
         }
      }
      
      public function watchListener(listener:IAsyncStartupRunListener) : void
      {
         var startListener:IAsyncStartupRunListener = null;
         var completeListener:IAsyncCompletionRunListener = null;
         if(listener is IAsyncStartupRunListener)
         {
            ++this._totalStartUpCount;
            startListener = listener as IAsyncStartupRunListener;
            if(!startListener.ready)
            {
               ++this._pendingStartupCount;
               this.monitorForAsyncStartup(startListener);
            }
         }
         if(listener is IAsyncCompletionRunListener)
         {
            completeListener = listener as IAsyncCompletionRunListener;
         }
      }
   }
}
