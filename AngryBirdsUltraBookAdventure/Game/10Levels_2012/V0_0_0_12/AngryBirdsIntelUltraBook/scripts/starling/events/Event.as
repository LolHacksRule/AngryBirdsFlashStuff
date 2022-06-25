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
         if(!(_loc2_ && Event))
         {
            ADDED = "added";
         }
         while(true)
         {
            ADDED_TO_STAGE = "addedToStage";
            loop1:
            for(; !(_loc2_ && _loc2_); loop3:
            while(_loc1_ || _loc1_)
            {
               REMOVED_FROM_STAGE = "removedFromStage";
               loop4:
               for(; !_loc2_; if(!(_loc1_ || Event))
               {
                  continue;
               },CONTEXT3D_CREATE = "context3DCreate",while(_loc1_)
               {
                  §-!&§ = "removeFromJuggler";
                  if(!_loc1_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     continue loop3;
                  }
                  §§goto(addr65);
               },§§goto(addr84))
               {
                  §<!=§ = "triggered";
                  while(true)
                  {
                     §0G§ = "flatten";
                     addr84:
                     while(!_loc2_)
                     {
                        RESIZE = "resize";
                        loop7:
                        while(true)
                        {
                           COMPLETE = "complete";
                           addr65:
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 continue loop4;
                              }
                              continue loop7;
                           }
                           continue loop4;
                        }
                     }
                  }
               }
               §§goto(addr125);
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            })
            {
               ENTER_FRAME = "enterFrame";
               while(true)
               {
                  § q§ = "removed";
                  continue loop1;
               }
            }
         }
      }
      
      private var §#!+§:EventDispatcher;
      
      private var §,!d§:EventDispatcher;
      
      private var §00§:String;
      
      private var §2!%§:Boolean;
      
      private var §][§:Boolean;
      
      private var §5I§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super();
            while(true)
            {
               this.§00§ = param1;
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            this.§2!%§ = param2;
            if(!_loc3_)
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§][§ = true;
         }
      }
      
      public function §4!V§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§#!+§ = param1;
         }
      }
      
      function §`?§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
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
