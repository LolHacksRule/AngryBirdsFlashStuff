package starling.events
{
   import §1V§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §if§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §+=§:String = "triggered";
      
      public static const §'!l§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §@!e§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
                     §if§ = "removed";
                     loop3:
                     for(; !_loc2_; while(!(_loc2_ && _loc2_))
                     {
                        §'!l§ = "flatten";
                     })
                     {
                        REMOVED_FROM_STAGE = "removedFromStage";
                        while(true)
                        {
                           §+=§ = "triggered";
                           continue loop3;
                           addr45:
                           if(_loc1_ || _loc1_)
                           {
                              CONTEXT3D_CREATE = "context3DCreate";
                              while(!_loc2_)
                              {
                                 §@!e§ = "removeFromJuggler";
                                 if(!_loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       return;
                                    }
                                    addr43:
                                    while(!_loc2_)
                                    {
                                       §§goto(addr45);
                                    }
                                    continue loop3;
                                 }
                              }
                              loop7:
                              while(true)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 addr88:
                                 while(true)
                                 {
                                    RESIZE = "resize";
                                    continue loop7;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      private var § !8§:EventDispatcher;
      
      private var §1g§:EventDispatcher;
      
      private var §%8§:String;
      
      private var §&c§:Boolean;
      
      private var §#!B§:Boolean;
      
      private var § +§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§%8§ = param1;
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.§&c§ = param2;
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr47);
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§#!B§ = true;
         }
      }
      
      public function §`!v§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§#!B§ = this.§ +§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§%8§,this.§&c§);
      }
      
      function §;"#§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ !8§ = param1;
         }
      }
      
      function §?!D§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1g§ = param1;
         }
      }
      
      function get §[![§() : Boolean
      {
         return this.§#!B§;
      }
      
      function get §<"1§() : Boolean
      {
         return this.§ +§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§&c§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§ !8§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§1g§;
      }
      
      public function get type() : String
      {
         return this.§%8§;
      }
   }
}
