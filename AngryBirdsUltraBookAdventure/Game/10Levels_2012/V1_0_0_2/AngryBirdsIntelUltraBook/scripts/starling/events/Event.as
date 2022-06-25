package starling.events
{
   import §`s§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §1d§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §-U§:String = "triggered";
      
      public static const §&!E§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §]!%§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            ADDED = "added";
            while(true)
            {
               ADDED_TO_STAGE = "addedToStage";
               addr37:
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
         }
         loop1:
         while(true)
         {
            ENTER_FRAME = "enterFrame";
            addr138:
            while(true)
            {
               §1d§ = "removed";
               continue loop1;
            }
         }
      }
      
      private var §0!R§:EventDispatcher;
      
      private var §=^§:EventDispatcher;
      
      private var §,s§:String;
      
      private var §+c§:Boolean;
      
      private var §<-§:Boolean;
      
      private var §2!E§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super();
            while(true)
            {
               this.§,s§ = param1;
               while(_loc3_ || param2)
               {
                  this.§+c§ = param2;
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  return;
                  addr59:
               }
            }
         }
         §§goto(addr59);
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§<-§ = true;
         }
      }
      
      public function §>!<§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<-§ = this.§2!E§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§,s§,this.§+c§);
      }
      
      function §`"§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§0!R§ = param1;
         }
      }
      
      function §%!u§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§=^§ = param1;
         }
      }
      
      function get §;r§() : Boolean
      {
         return this.§<-§;
      }
      
      function get §&c§() : Boolean
      {
         return this.§2!E§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§+c§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§0!R§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§=^§;
      }
      
      public function get type() : String
      {
         return this.§,s§;
      }
   }
}
