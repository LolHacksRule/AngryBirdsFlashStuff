package starling.events
{
   import §+§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §4Y§:String = "removed";
      
      public static const §<!=§:String = "removedFromStage";
      
      public static const §8r§:String = "triggered";
      
      public static const §"@§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §,m§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Event))
         {
            ADDED = "added";
            while(true)
            {
               ADDED_TO_STAGE = "addedToStage";
               loop1:
               while(true)
               {
                  ENTER_FRAME = "enterFrame";
                  §4Y§ = "removed";
                  if(!_loc1_)
                  {
                     break;
                  }
                  §<!=§ = "removedFromStage";
                  §8r§ = "triggered";
                  while(true)
                  {
                     §"@§ = "flatten";
                     loop3:
                     while(!_loc2_)
                     {
                        continue loop1;
                        while(true)
                        {
                           COMPLETE = "complete";
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        CONTEXT3D_CREATE = "context3DCreate";
                        do
                        {
                           §,m§ = "removeFromJuggler";
                        }
                        while(!_loc1_);
                        
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      private var §8S§:EventDispatcher;
      
      private var §^!<§:EventDispatcher;
      
      private var §6!'§:String;
      
      private var §"1§:Boolean;
      
      private var §"!O§:Boolean;
      
      private var §%!O§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super();
            while(true)
            {
               this.§6!'§ = param1;
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§"1§ = param2;
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§"!O§ = true;
         }
      }
      
      public function §9!?§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            this.§"!O§ = this.§%!O§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§6!'§,this.§"1§);
      }
      
      function §9X§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8S§ = param1;
         }
      }
      
      function §+Z§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^!<§ = param1;
         }
      }
      
      function get § J§() : Boolean
      {
         return this.§"!O§;
      }
      
      function get §0G§() : Boolean
      {
         return this.§%!O§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§"1§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§8S§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§^!<§;
      }
      
      public function get type() : String
      {
         return this.§6!'§;
      }
   }
}
