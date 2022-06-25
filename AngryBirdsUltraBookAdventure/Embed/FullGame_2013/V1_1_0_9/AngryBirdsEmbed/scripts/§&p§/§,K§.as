package §&p§
{
   import §&o§.Sprite;
   import §9K§.§5!H§;
   
   public class §,K§
   {
      
      public static const §;r§:String = "setreferencesize";
      
      public static const §<!,§:String = "createsprite";
      
      public static const §%!0§:String = "scroll";
      
      public static const §package§:String = "zoom";
      
      public static const §`g§:String = "playsound";
      
      public static const §[U§:String = "fitwidth";
      
      public static const § L§:String = "fitheight";
      
      public static const §;&§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §;r§ = "setreferencesize";
            §<!,§ = "createsprite";
            §%!0§ = "scroll";
            if(_loc1_ || _loc2_)
            {
               §package§ = "zoom";
               if(_loc1_ || _loc2_)
               {
                  §`g§ = "playsound";
                  if(_loc1_)
                  {
                     §[U§ = "fitwidth";
                     addr72:
                     § L§ = "fitheight";
                     if(_loc2_)
                     {
                     }
                     §§goto(addr85);
                  }
                  §;&§ = "set_bg_colour";
                  if(!_loc1_)
                  {
                  }
                  §§goto(addr85);
               }
               END = "end";
            }
            addr85:
            return;
         }
         §§goto(addr72);
      }
      
      private var §^f§:Number;
      
      private var §67§:Number;
      
      public function §,K§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super();
            if(!(_loc4_ && _loc3_))
            {
               this.§^f§ = param1;
               if(_loc3_)
               {
                  this.§67§ = param2;
                  if(!(_loc4_ && param1))
                  {
                     §§goto(addr67);
                  }
               }
               §§goto(addr74);
            }
         }
         addr67:
         if(isNaN(this.§67§))
         {
            if(_loc3_)
            {
               addr74:
               this.§67§ = 0;
            }
         }
      }
      
      public function get time() : Number
      {
         return this.§^f§;
      }
      
      public function get duration() : Number
      {
         return this.§67§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§5!H§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §§push(param1);
            §§push(this.time);
            if(_loc4_ || this)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(_loc4_)
               {
                  addr49:
                  §§push(false);
                  if(_loc4_ || param1)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr58:
                  §§push(true);
               }
               return §§pop();
            }
            §§goto(addr58);
         }
         §§goto(addr49);
      }
      
      public function clone() : §,K§
      {
         return new §,K§(this.time,this.duration);
      }
   }
}
