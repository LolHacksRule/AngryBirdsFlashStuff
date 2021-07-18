package starling.events
{
   import §&!Z§.formatString;
   import flash.utils.getQualifiedClassName;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const §<!L§:String = "removed";
      
      public static const §5!C§:String = "removedFromStage";
      
      public static const §<K§:String = "triggered";
      
      public static const §>"6§:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const §^m§:String = "removeFromJuggler";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
                     §<!L§ = "removed";
                     addr120:
                     while(!_loc2_)
                     {
                        §5!C§ = "removedFromStage";
                        while(true)
                        {
                           §<K§ = "triggered";
                           addr110:
                           while(true)
                           {
                              §>"6§ = "flatten";
                              addr105:
                              while(true)
                              {
                                 RESIZE = "resize";
                                 continue loop0;
                              }
                           }
                        }
                        if(_loc1_ || _loc1_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      private var §?!<§:EventDispatcher;
      
      private var §@"'§:EventDispatcher;
      
      private var §!k§:String;
      
      private var §`!S§:Boolean;
      
      private var §"]§:Boolean;
      
      private var §^!R§:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
         }
         while(true)
         {
            this.§!k§ = param1;
            while(_loc4_ || _loc3_)
            {
               this.§`!S§ = param2;
               if(_loc4_ || _loc3_)
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
         if(_loc2_ || this)
         {
            this.§"]§ = true;
         }
      }
      
      public function §%!v§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"]§ = this.§^!R§ = true;
         }
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.§!k§,this.§`!S§);
      }
      
      function §%i§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§?!<§ = param1;
         }
      }
      
      function §'!`§(param1:EventDispatcher) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@"'§ = param1;
         }
      }
      
      function get §?Z§() : Boolean
      {
         return this.§"]§;
      }
      
      function get §@!"§() : Boolean
      {
         return this.§^!R§;
      }
      
      public function get bubbles() : Boolean
      {
         return this.§`!S§;
      }
      
      public function get target() : EventDispatcher
      {
         return this.§?!<§;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.§@"'§;
      }
      
      public function get type() : String
      {
         return this.§!k§;
      }
   }
}
