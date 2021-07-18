package starling.events
{
   import §=]§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §["f§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §>a§:String = "triggered";
      
      public static const §[#J§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §&!T§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            ADDED = "added";
            loop0:
            while(true)
            {
               ADDED_TO_STAGE = "addedToStage";
               loop1:
               while(true)
               {
                  ENTER_FRAME = "enterFrame";
                  loop2:
                  while(true)
                  {
                     §["f§ = "removed";
                     while(true)
                     {
                        REMOVED_FROM_STAGE = "removedFromStage";
                        loop4:
                        while(_loc2_)
                        {
                           §>a§ = "triggered";
                           while(!_loc1_)
                           {
                              loop9:
                              while(_loc2_ || _loc1_)
                              {
                                 CONTEXT3D_CREATE = "context3DCreate";
                                 while(true)
                                 {
                                    if(!(_loc1_ && Event))
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop9;
                                 }
                                 while(!_loc1_)
                                 {
                                    COMPLETE = "complete";
                                    continue loop9;
                                 }
                                 while(_loc2_ || _loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                        if(_loc2_ || _loc1_)
                        {
                           return;
                           addr37:
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §[#J§ = "flatten";
            §§goto(addr85);
         }
         §§goto(addr37);
      }
      
      private var §%!c§:EventDispatcher;
      
      private var §+#L§:EventDispatcher;
      
      private var §;"-§:String;
      
      private var §5!$§:Boolean;
      
      private var §0J§:Boolean;
      
      private var §%#§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
         }
         while(true)
         {
            this.§;"-§ = param1;
            while(_loc3_)
            {
               this.§5!$§ = param2;
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§0J§ = true;
         }
      }
      
      public function stopImmediatePropagation() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§0J§ = this.§%#§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§;"-§,this.§5!$§);
      }
      
      function §2!`§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%!c§ = param1;
         }
      }
      
      function §#!s§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+#L§ = param1;
         }
      }
      
      function get §4'§() : Boolean
      {
         return this.§0J§;
      }
      
      function get §4!!§() : Boolean
      {
         return this.§%#§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§5!$§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§%!c§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§+#L§;
      }
      
      public function get type() : String
      {
         return this.§;"-§;
      }
   }
}
