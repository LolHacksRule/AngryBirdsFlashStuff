package starling.events
{
   import §9!k§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §!-§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §^!6§:String = "triggered";
      
      public static const §]!+§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §^U§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            ADDED = "added";
            while(true)
            {
               ADDED_TO_STAGE = "addedToStage";
            }
            addr137:
         }
         loop1:
         while(true)
         {
            ENTER_FRAME = "enterFrame";
            loop2:
            while(true)
            {
               §!-§ = "removed";
               addr123:
               while(true)
               {
                  REMOVED_FROM_STAGE = "removedFromStage";
                  loop4:
                  while(true)
                  {
                     §^!6§ = "triggered";
                     while(true)
                     {
                        if(_loc2_)
                        {
                           continue loop2;
                        }
                        continue loop4;
                        addr32:
                        if(!(_loc1_ && Event))
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private var §#j§:EventDispatcher;
      
      private var §[7§:EventDispatcher;
      
      private var §4g§:String;
      
      private var §<!>§:Boolean;
      
      private var §`6§:Boolean;
      
      private var §5!§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super();
            while(true)
            {
               this.§4g§ = param1;
               while(!_loc4_)
               {
                  this.§<!>§ = param2;
                  if(_loc3_ || _loc3_)
                  {
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§`6§ = true;
         }
      }
      
      public function §4!X§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§`6§ = this.§5!§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§4g§,this.§<!>§);
      }
      
      function §?&§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§#j§ = param1;
         }
      }
      
      function §@v§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[7§ = param1;
         }
      }
      
      function get §8`§() : Boolean
      {
         return this.§`6§;
      }
      
      function get §4n§() : Boolean
      {
         return this.§5!§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§<!>§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§#j§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§[7§;
      }
      
      public function get type() : String
      {
         return this.§4g§;
      }
   }
}
