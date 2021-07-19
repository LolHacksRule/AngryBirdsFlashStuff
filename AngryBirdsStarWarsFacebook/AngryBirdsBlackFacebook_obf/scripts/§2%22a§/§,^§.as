package §2"a§
{
   import §!!U§.Sprite;
   import §7!F§.§7§;
   
   public class §,^§
   {
      
      public static const §6"X§:String = "setreferencesize";
      
      public static const §7!d§:String = "createsprite";
      
      public static const § if§:String = "scroll";
      
      public static const §6!C§:String = "zoom";
      
      public static const §""%§:String = "playsound";
      
      public static const §<"V§:String = "fitwidth";
      
      public static const §4#K§:String = "fitheight";
      
      public static const §3#N§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §,^§))
         {
            §6"X§ = "setreferencesize";
         }
         loop0:
         while(true)
         {
            §7!d§ = "createsprite";
            while(true)
            {
               § if§ = "scroll";
               addr118:
               while(true)
               {
                  §6!C§ = "zoom";
                  continue loop0;
               }
               addr48:
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private var §#T§:Number;
      
      private var §1!]§:Number;
      
      public function §,^§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§#T§ = param1;
               addr74:
               while(_loc4_)
               {
                  this.§1!]§ = param2;
               }
            }
         }
         while(isNaN(this.§1!]§))
         {
            if(_loc4_)
            {
               this.§1!]§ = 0;
            }
            if(!(_loc4_ || param1))
            {
               continue;
            }
            if(_loc4_)
            {
               break;
            }
            §§goto(addr74);
         }
      }
      
      public function get time() : Number
      {
         return this.§#T§;
      }
      
      public function get duration() : Number
      {
         return this.§1!]§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§7#5§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            §§push(param1);
            §§push(this.time);
            if(_loc4_ || param2)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(_loc4_ || this)
               {
                  addr64:
                  §§push(false);
                  if(!_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr68:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr68);
         }
         §§goto(addr64);
      }
      
      public function clone() : §,^§
      {
         return new §,^§(this.time,this.duration);
      }
   }
}
