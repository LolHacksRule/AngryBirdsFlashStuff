package starling.events
{
   import §+o§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const § =§:String = "removed";
      
      public static const §get §:String = "removedFromStage";
      
      public static const §#!V§:String = "triggered";
      
      public static const §#&§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §;8§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            ADDED = "added";
            loop0:
            while(true)
            {
               ADDED_TO_STAGE = "addedToStage";
               while(true)
               {
                  ENTER_FRAME = "enterFrame";
                  loop2:
                  while(_loc1_)
                  {
                     § =§ = "removed";
                     while(true)
                     {
                        §get § = "removedFromStage";
                     }
                     loop8:
                     do
                     {
                        if(!(_loc1_ || Event))
                        {
                           continue loop2;
                        }
                        CONTEXT3D_CREATE = "context3DCreate";
                        for(; _loc1_; §;8§ = "removeFromJuggler",if(_loc1_ || _loc2_)
                        {
                           continue loop8;
                        })
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           §§goto(addr115);
                        }
                        while(_loc1_ || Event)
                        {
                           if(_loc1_)
                           {
                              COMPLETE = "complete";
                              continue loop8;
                           }
                           continue loop0;
                        }
                        loop6:
                        while(true)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              RESIZE = "resize";
                              continue;
                           }
                           addr105:
                           while(true)
                           {
                              §#&§ = "flatten";
                              continue loop6;
                           }
                        }
                        addr77:
                        while(true)
                        {
                           §#!V§ = "triggered";
                           §§goto(addr105);
                        }
                     }
                     while(_loc2_ && Event);
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      private var §9U§:EventDispatcher;
      
      private var §2!i§:EventDispatcher;
      
      private var §^"'§:String;
      
      private var §6!h§:Boolean;
      
      private var §>!D§:Boolean;
      
      private var §@+§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§^"'§ = param1;
               while(!_loc4_)
               {
                  this.§6!h§ = param2;
                  if(_loc3_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§>!D§ = true;
         }
      }
      
      public function stopImmediatePropagation() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>!D§ = this.§@+§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§^"'§,this.§6!h§);
      }
      
      function §5",§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§9U§ = param1;
         }
      }
      
      function §=!^§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2!i§ = param1;
         }
      }
      
      function get §,G§() : Boolean
      {
         return this.§>!D§;
      }
      
      function get §4n§() : Boolean
      {
         return this.§@+§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§6!h§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§9U§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§2!i§;
      }
      
      public function get type() : String
      {
         return this.§^"'§;
      }
   }
}
