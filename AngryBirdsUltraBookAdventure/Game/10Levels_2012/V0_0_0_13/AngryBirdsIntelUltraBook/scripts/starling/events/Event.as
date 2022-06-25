package starling.events
{
   import §8g§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const § q§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §<!=§:String = "triggered";
      
      public static const §0G§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §-!&§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            ADDED = "added";
            loop0:
            while(true)
            {
               ADDED_TO_STAGE = "addedToStage";
               while(true)
               {
                  ENTER_FRAME = "enterFrame";
                  addr127:
                  while(true)
                  {
                     § q§ = "removed";
                     loop3:
                     while(true)
                     {
                        REMOVED_FROM_STAGE = "removedFromStage";
                        while(true)
                        {
                           §<!=§ = "triggered";
                           addr108:
                           while(!_loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
                  addr79:
                  loop8:
                  while(_loc1_ || Event)
                  {
                     COMPLETE = "complete";
                     while(_loc1_ || Event)
                     {
                        CONTEXT3D_CREATE = "context3DCreate";
                        continue loop0;
                     }
                     while(_loc1_)
                     {
                        RESIZE = "resize";
                        continue loop8;
                        §§goto(addr67);
                     }
                     addr67:
                     §§goto(addr108);
                  }
               }
            }
         }
         while(true)
         {
            §0G§ = "flatten";
            §§goto(addr91);
         }
         §§goto(addr45);
      }
      
      private var §#!+§:EventDispatcher;
      
      private var §,!d§:EventDispatcher;
      
      private var §00§:String;
      
      private var §2!%§:Boolean;
      
      private var §][§:Boolean;
      
      private var §5I§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super();
            while(true)
            {
               this.§00§ = param1;
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     this.§2!%§ = param2;
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§][§ = true;
         }
      }
      
      public function §4!V§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            this.§][§ = this.§5I§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§00§,this.§2!%§);
      }
      
      function §,!g§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§#!+§ = param1;
         }
      }
      
      function §`?§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,!d§ = param1;
         }
      }
      
      function get §>q§() : Boolean
      {
         return this.§][§;
      }
      
      function get § ;§() : Boolean
      {
         return this.§5I§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§2!%§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§#!+§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§,!d§;
      }
      
      public function get type() : String
      {
         return this.§00§;
      }
   }
}
