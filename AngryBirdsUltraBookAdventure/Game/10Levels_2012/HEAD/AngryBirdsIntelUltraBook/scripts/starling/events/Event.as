package starling.events
{
   import §@2§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §"!5§:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const §;!g§:String = "triggered";
      
      public static const §8Z§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §4P§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Event)
         {
            ADDED = "added";
            loop0:
            while(true)
            {
               ADDED_TO_STAGE = "addedToStage";
               while(true)
               {
                  ENTER_FRAME = "enterFrame";
                  addr137:
                  while(true)
                  {
                     §"!5§ = "removed";
                     while(true)
                     {
                        REMOVED_FROM_STAGE = "removedFromStage";
                        addr120:
                        while(!(_loc2_ && _loc1_))
                        {
                           §;!g§ = "triggered";
                           continue loop0;
                        }
                     }
                  }
                  addr55:
                  if(!(_loc2_ && Event))
                  {
                     §4P§ = "removeFromJuggler";
                     addr72:
                     if(!(_loc2_ && Event))
                     {
                        return;
                     }
                     loop10:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              addr48:
                              if(!(_loc1_ || Event))
                              {
                                 break;
                              }
                              §§goto(addr55);
                           }
                           else
                           {
                              while(_loc1_ || _loc1_)
                              {
                                 COMPLETE = "complete";
                              }
                              while(true)
                              {
                                 RESIZE = "resize";
                                 §§goto(addr86);
                              }
                              addr86:
                              addr98:
                           }
                        }
                        while(_loc1_)
                        {
                           if(_loc1_)
                           {
                              CONTEXT3D_CREATE = "context3DCreate";
                              continue loop10;
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr120);
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §8Z§ = "flatten";
            §§goto(addr98);
         }
      }
      
      private var §`N§:EventDispatcher;
      
      private var §;!5§:EventDispatcher;
      
      private var §9!Q§:String;
      
      private var §[!b§:Boolean;
      
      private var §?^§:Boolean;
      
      private var §@!+§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            do
            {
               this.§9!Q§ = param1;
               do
               {
                  this.§[!b§ = param2;
               }
               while(!(_loc3_ || this));
               
            }
            while(!(_loc3_ || param2));
            
         }
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§?^§ = true;
         }
      }
      
      public function §@!N§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?^§ = this.§@!+§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§9!Q§,this.§[!b§);
      }
      
      function §&z§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§`N§ = param1;
         }
      }
      
      function §+!M§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;!5§ = param1;
         }
      }
      
      function get §<Q§() : Boolean
      {
         return this.§?^§;
      }
      
      function get §]5§() : Boolean
      {
         return this.§@!+§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§[!b§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§`N§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§;!5§;
      }
      
      public function get type() : String
      {
         return this.§9!Q§;
      }
   }
}
