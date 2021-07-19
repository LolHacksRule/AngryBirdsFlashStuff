package starling.events
{
   import §<!M§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §8!?§:String = "removed";
      
      public static const §6!;§:String = "removedFromStage";
      
      public static const §0!9§:String = "triggered";
      
      public static const §>&§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §<@§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            ADDED = "added";
            while(true)
            {
               ADDED_TO_STAGE = "addedToStage";
               addr100:
               if(!(_loc1_ || Event))
               {
                  continue;
               }
               §>&§ = "flatten";
               loop6:
               while(true)
               {
                  RESIZE = "resize";
                  addr76:
                  while(_loc1_ || Event)
                  {
                     COMPLETE = "complete";
                     loop8:
                     while(!_loc2_)
                     {
                        continue loop6;
                        while(true)
                        {
                           if(_loc1_ || _loc1_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop8;
                        }
                        addr93:
                        while(!(_loc2_ && _loc1_))
                        {
                           §§goto(addr100);
                        }
                        while(true)
                        {
                           ENTER_FRAME = "enterFrame";
                           §§goto(addr132);
                           §§goto(addr93);
                        }
                     }
                  }
                  while(true)
                  {
                     §0!9§ = "triggered";
                     §§goto(addr93);
                     §§goto(addr76);
                  }
               }
            }
         }
         §§goto(addr137);
      }
      
      private var §5!F§:EventDispatcher;
      
      private var §"s§:EventDispatcher;
      
      private var §&!9§:String;
      
      private var §'!M§:Boolean;
      
      private var §]J§:Boolean;
      
      private var §2!Q§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super();
         }
         do
         {
            this.§&!9§ = param1;
            do
            {
               this.§'!M§ = param2;
            }
            while(!_loc3_);
            
         }
         while(!(_loc3_ || param2));
         
      }
      
      public function stopPropagation() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§]J§ = true;
         }
      }
      
      public function §[v§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]J§ = this.§2!Q§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§&!9§,this.§'!M§);
      }
      
      function §%!;§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5!F§ = param1;
         }
      }
      
      function §-;§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§"s§ = param1;
         }
      }
      
      function get §@p§() : Boolean
      {
         return this.§]J§;
      }
      
      function get §?]§() : Boolean
      {
         return this.§2!Q§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§'!M§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§5!F§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§"s§;
      }
      
      public function get type() : String
      {
         return this.§&!9§;
      }
   }
}
