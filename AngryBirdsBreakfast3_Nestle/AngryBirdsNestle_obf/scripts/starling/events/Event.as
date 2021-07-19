package starling.events
{
   import §^!^§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §-,§:String = "removed";
      
      public static const §>@§:String = "removedFromStage";
      
      public static const §,m§:String = "triggered";
      
      public static const §3o§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §2"$§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            ADDED = "added";
            while(true)
            {
               ADDED_TO_STAGE = "addedToStage";
               addr79:
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               COMPLETE = "complete";
               loop8:
               while(_loc2_ || _loc2_)
               {
                  CONTEXT3D_CREATE = "context3DCreate";
                  while(true)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop8;
                  }
                  while(true)
                  {
                     §-,§ = "removed";
                     §§goto(addr108);
                  }
               }
               while(true)
               {
                  if(_loc2_)
                  {
                     §3o§ = "flatten";
                     §§goto(addr91);
                  }
                  break;
                  §§goto(addr53);
               }
               addr53:
               §§goto(addr103);
            }
         }
         §§goto(addr128);
      }
      
      private var §!N§:EventDispatcher;
      
      private var §2I§:EventDispatcher;
      
      private var §#!-§:String;
      
      private var §2'§:Boolean;
      
      private var §]!I§:Boolean;
      
      private var §try §:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
         }
         while(true)
         {
            this.§#!-§ = param1;
            while(!(_loc3_ && _loc3_))
            {
               this.§2'§ = param2;
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§]!I§ = true;
         }
      }
      
      public function stopImmediatePropagation() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]!I§ = this.§try § = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§#!-§,this.§2'§);
      }
      
      function §>"-§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§!N§ = param1;
         }
      }
      
      function §-I§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§2I§ = param1;
         }
      }
      
      function get §[x§() : Boolean
      {
         return this.§]!I§;
      }
      
      function get §,"!§() : Boolean
      {
         return this.§try §;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§2'§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§!N§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§2I§;
      }
      
      public function get type() : String
      {
         return this.§#!-§;
      }
   }
}
