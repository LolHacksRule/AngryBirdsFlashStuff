package starling.events
{
   import §=9§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §"!f§:String = "removed";
      
      public static const §=!S§:String = "removedFromStage";
      
      public static const §;!_§:String = "triggered";
      
      public static const §6!a§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §9Y§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            ADDED = "added";
            while(true)
            {
               ADDED_TO_STAGE = "addedToStage";
               loop2:
               for(; _loc1_ || _loc2_; loop6:
               while(_loc1_ || Event)
               {
                  RESIZE = "resize";
                  while(true)
                  {
                     if(_loc1_ || Event)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop6;
                  }
                  §§goto(addr106);
               })
               {
                  §"!f§ = "removed";
                  loop3:
                  while(true)
                  {
                     §=!S§ = "removedFromStage";
                     addr118:
                     addr157:
                     while(_loc1_ || _loc2_)
                     {
                        §;!_§ = "triggered";
                        continue loop3;
                        if(_loc1_ || _loc2_)
                        {
                           return;
                        }
                     }
                     while(true)
                     {
                        ENTER_FRAME = "enterFrame";
                        continue loop2;
                        §§goto(addr118);
                     }
                  }
               }
            }
         }
         §§goto(addr157);
      }
      
      private var §'Q§:EventDispatcher;
      
      private var §?!&§:EventDispatcher;
      
      private var §>A§:String;
      
      private var §-3§:Boolean;
      
      private var §#y§:Boolean;
      
      private var §#G§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super();
         }
         do
         {
            this.§>A§ = param1;
            do
            {
               this.§-3§ = param2;
            }
            while(!(_loc4_ || param2));
            
         }
         while(_loc3_ && _loc3_);
         
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§#y§ = true;
         }
      }
      
      public function §5W§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            this.§#y§ = this.§#G§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§>A§,this.§-3§);
      }
      
      function §&z§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§'Q§ = param1;
         }
      }
      
      function §1!+§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!&§ = param1;
         }
      }
      
      function get §<U§() : Boolean
      {
         return this.§#y§;
      }
      
      function get §&!R§() : Boolean
      {
         return this.§#G§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§-3§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§'Q§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§?!&§;
      }
      
      public function get type() : String
      {
         return this.§>A§;
      }
   }
}
