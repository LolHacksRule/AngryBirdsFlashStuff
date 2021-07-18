package starling.events
{
   import §`!=§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §@1§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §6"!§:String = "triggered";
      
      public static const § s§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §'m§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            ADDED = "added";
            loop0:
            while(true)
            {
               ADDED_TO_STAGE = "addedToStage";
               addr137:
               while(true)
               {
                  ENTER_FRAME = "enterFrame";
                  loop2:
                  while(true)
                  {
                     §@1§ = "removed";
                     addr117:
                     while(true)
                     {
                        REMOVED_FROM_STAGE = "removedFromStage";
                        while(!_loc2_)
                        {
                           §6"!§ = "triggered";
                           while(_loc1_ || _loc2_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            COMPLETE = "complete";
            while(!_loc2_)
            {
               CONTEXT3D_CREATE = "context3DCreate";
               while(!_loc2_)
               {
                  §'m§ = "removeFromJuggler";
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr39);
               }
            }
            §§goto(addr137);
         }
         §§goto(addr50);
      }
      
      private var §&d§:EventDispatcher;
      
      private var §'$§:EventDispatcher;
      
      private var §%!G§:String;
      
      private var §@"&§:Boolean;
      
      private var §8"?§:Boolean;
      
      private var §>"%§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super();
            while(true)
            {
               this.§%!G§ = param1;
               while(_loc4_ || param1)
               {
                  this.§@"&§ = param2;
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  return;
                  addr50:
               }
            }
         }
         §§goto(addr50);
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§8"?§ = true;
         }
      }
      
      public function §#!f§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§8"?§ = this.§>"%§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§%!G§,this.§@"&§);
      }
      
      function § !!§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&d§ = param1;
         }
      }
      
      function §#"6§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'$§ = param1;
         }
      }
      
      function get §7!d§() : Boolean
      {
         return this.§8"?§;
      }
      
      function get §="+§() : Boolean
      {
         return this.§>"%§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§@"&§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§&d§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§'$§;
      }
      
      public function get type() : String
      {
         return this.§%!G§;
      }
   }
}
