package starling.events
{
   import §;! §.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §0'§:String = "removed";
      
      public static const §?+§:String = "removedFromStage";
      
      public static const §9c§:String = "triggered";
      
      public static const §,!Z§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §0<§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            ADDED = "added";
            while(true)
            {
               ADDED_TO_STAGE = "addedToStage";
               while(true)
               {
                  ENTER_FRAME = "enterFrame";
                  loop2:
                  while(true)
                  {
                     §0'§ = "removed";
                     loop3:
                     while(true)
                     {
                        §?+§ = "removedFromStage";
                        loop4:
                        while(true)
                        {
                           §9c§ = "triggered";
                           while(true)
                           {
                              §,!Z§ = "flatten";
                              continue loop2;
                              addr79:
                              if(!(_loc1_ && _loc2_))
                              {
                                 COMPLETE = "complete";
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    addr72:
                                    addr72:
                                    while(!(_loc1_ && _loc2_))
                                    {
                                       §§goto(addr79);
                                    }
                                    continue loop2;
                                 }
                                 continue loop4;
                                 addr44:
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            RESIZE = "resize";
            §§goto(addr72);
         }
      }
      
      private var §`!^§:EventDispatcher;
      
      private var §&!2§:EventDispatcher;
      
      private var §`Z§:String;
      
      private var §"9§:Boolean;
      
      private var § z§:Boolean;
      
      private var §>s§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§`Z§ = param1;
               loop1:
               while(!(_loc3_ && _loc3_))
               {
                  while(true)
                  {
                     this.§"9§ = param2;
                     if(!(_loc3_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§ z§ = true;
         }
      }
      
      public function §in§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            this.§ z§ = this.§>s§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§`Z§,this.§"9§);
      }
      
      function §&2§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§`!^§ = param1;
         }
      }
      
      function §#o§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!2§ = param1;
         }
      }
      
      function get §9!$§() : Boolean
      {
         return this.§ z§;
      }
      
      function get §6^§() : Boolean
      {
         return this.§>s§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§"9§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§`!^§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§&!2§;
      }
      
      public function get type() : String
      {
         return this.§`Z§;
      }
   }
}
