package starling.events
{
   import §3W§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §2!v§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §"g§:String = "triggered";
      
      public static const §^n§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §^8§:String = "removeFromJuggler";
      
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
               while(true)
               {
                  ENTER_FRAME = "enterFrame";
                  loop2:
                  while(!_loc1_)
                  {
                     §2!v§ = "removed";
                     loop3:
                     while(true)
                     {
                        REMOVED_FROM_STAGE = "removedFromStage";
                        loop4:
                        for(; !_loc1_; loop7:
                        while(!(_loc1_ && Event))
                        {
                           COMPLETE = "complete";
                           loop8:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 CONTEXT3D_CREATE = "context3DCreate";
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr89);
                                    addr48:
                                    §^8§ = "removeFromJuggler";
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop8;
                                    }
                                    §§goto(addr32);
                                 }
                                 continue loop3;
                              }
                              continue loop7;
                           }
                           continue loop0;
                        })
                        {
                           §"g§ = "triggered";
                           while(true)
                           {
                              §^n§ = "flatten";
                              do
                              {
                                 RESIZE = "resize";
                                 continue loop4;
                              }
                              while(_loc1_);
                              
                           }
                        }
                        continue loop2;
                        if(_loc1_ && Event)
                        {
                           continue;
                        }
                        §§goto(addr48);
                     }
                  }
               }
            }
         }
      }
      
      private var §;D§:EventDispatcher;
      
      private var §%">§:EventDispatcher;
      
      private var §#!W§:String;
      
      private var §!"6§:Boolean;
      
      private var §%!I§:Boolean;
      
      private var §3L§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
         }
         while(true)
         {
            this.§#!W§ = param1;
            while(_loc3_)
            {
               this.§!"6§ = param2;
               if(!_loc4_)
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
            this.§%!I§ = true;
         }
      }
      
      public function §[p§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§%!I§ = this.§3L§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§#!W§,this.§!"6§);
      }
      
      function §0'§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§;D§ = param1;
         }
      }
      
      function §<!D§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§%">§ = param1;
         }
      }
      
      function get §[X§() : Boolean
      {
         return this.§%!I§;
      }
      
      function get §%!9§() : Boolean
      {
         return this.§3L§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§!"6§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§;D§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§%">§;
      }
      
      public function get type() : String
      {
         return this.§#!W§;
      }
   }
}
