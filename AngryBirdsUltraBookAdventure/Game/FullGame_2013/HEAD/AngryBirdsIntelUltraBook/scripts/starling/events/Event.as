package starling.events
{
   import §'7§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §,3§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §0!?§:String = "triggered";
      
      public static const §0!!§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const § Z§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Event))
         {
            ADDED = "added";
            loop0:
            while(true)
            {
               ADDED_TO_STAGE = "addedToStage";
               while(true)
               {
                  ENTER_FRAME = "enterFrame";
                  addr142:
                  while(true)
                  {
                     §,3§ = "removed";
                     continue loop0;
                  }
                  addr83:
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  § Z§ = "removeFromJuggler";
                  addr90:
                  if(!_loc2_)
                  {
                     addr34:
                     if(!(_loc2_ && _loc2_))
                     {
                        addr41:
                        if(_loc2_ && Event)
                        {
                           while(true)
                           {
                              §0!!§ = "flatten";
                              addr105:
                              while(true)
                              {
                                 RESIZE = "resize";
                                 loop7:
                                 while(true)
                                 {
                                    COMPLETE = "complete";
                                    addr95:
                                    loop8:
                                    while(true)
                                    {
                                       CONTEXT3D_CREATE = "context3DCreate";
                                       addr55:
                                       while(true)
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             continue loop7;
                                          }
                                          continue loop8;
                                          §§goto(addr90);
                                       }
                                       continue loop7;
                                    }
                                    §§goto(addr50);
                                 }
                                 §§goto(addr34);
                              }
                              §§goto(addr41);
                           }
                        }
                        if(!_loc2_)
                        {
                           addr50:
                           return;
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr55);
               }
            }
         }
         §§goto(addr95);
      }
      
      private var §7@§:EventDispatcher;
      
      private var §-! §:EventDispatcher;
      
      private var §?!%§:String;
      
      private var §`_§:Boolean;
      
      private var §5O§:Boolean;
      
      private var §<j§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§?!%§ = param1;
               loop1:
               while(_loc3_ || this)
               {
                  while(true)
                  {
                     this.§`_§ = param2;
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§5O§ = true;
         }
      }
      
      public function §2!8§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§5O§ = this.§<j§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§?!%§,this.§`_§);
      }
      
      function §#s§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§7@§ = param1;
         }
      }
      
      function §+^§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§-! § = param1;
         }
      }
      
      function get §1v§() : Boolean
      {
         return this.§5O§;
      }
      
      function get §[$§() : Boolean
      {
         return this.§<j§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§`_§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§7@§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§-! §;
      }
      
      public function get type() : String
      {
         return this.§?!%§;
      }
   }
}
