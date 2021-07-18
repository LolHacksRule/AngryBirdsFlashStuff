package starling.events
{
   import §!=§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §,"W§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §7z§:String = "triggered";
      
      public static const §1!`§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §'J§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
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
                  while(true)
                  {
                     §,"W§ = "removed";
                     continue loop1;
                     loop5:
                     while(_loc2_)
                     {
                        §1!`§ = "flatten";
                        while(true)
                        {
                           RESIZE = "resize";
                           continue loop0;
                           addr78:
                           loop8:
                           while(_loc2_ || Event)
                           {
                              if(!_loc1_)
                              {
                                 while(true)
                                 {
                                    CONTEXT3D_CREATE = "context3DCreate";
                                    while(_loc2_)
                                    {
                                       §'J§ = "removeFromJuggler";
                                       if(_loc2_ || _loc1_)
                                       {
                                          if(_loc1_ && _loc2_)
                                          {
                                             continue loop8;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          addr49:
                                          if(_loc2_ || Event)
                                          {
                                             §§goto(addr56);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §7z§ = "triggered";
                                                continue loop5;
                                                §§goto(addr49);
                                             }
                                             addr126:
                                          }
                                          continue loop8;
                                       }
                                    }
                                    continue loop5;
                                 }
                                 return;
                                 addr56:
                                 addr87:
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      private var §1"'§:EventDispatcher;
      
      private var §5"Q§:EventDispatcher;
      
      private var §'!'§:String;
      
      private var §'!%§:Boolean;
      
      private var §>r§:Boolean;
      
      private var §2!A§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§'!'§ = param1;
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            this.§'!%§ = param2;
            if(!(_loc3_ && _loc3_))
            {
               if(_loc4_ || param2)
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
         if(!(_loc2_ && this))
         {
            this.§>r§ = true;
         }
      }
      
      public function §,"J§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>r§ = this.§2!A§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§'!'§,this.§'!%§);
      }
      
      function §#O§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§1"'§ = param1;
         }
      }
      
      function §''§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§5"Q§ = param1;
         }
      }
      
      function get §#p§() : Boolean
      {
         return this.§>r§;
      }
      
      function get §2"U§() : Boolean
      {
         return this.§2!A§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§'!%§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§1"'§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§5"Q§;
      }
      
      public function get type() : String
      {
         return this.§'!'§;
      }
   }
}
