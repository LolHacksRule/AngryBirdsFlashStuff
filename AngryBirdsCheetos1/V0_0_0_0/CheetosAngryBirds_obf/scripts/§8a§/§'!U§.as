package §8a§
{
   import §4W§.§!]§;
   import §`a§.Sprite;
   
   public class §'!U§
   {
      
      public static const §^r§:String = "setreferencesize";
      
      public static const §=!=§:String = "createsprite";
      
      public static const §;t§:String = "scroll";
      
      public static const §7;§:String = "zoom";
      
      public static const §^-§:String = "playsound";
      
      public static const §+M§:String = "fitwidth";
      
      public static const §5H§:String = "fitheight";
      
      public static const §`J§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §^r§ = "setreferencesize";
            loop0:
            while(true)
            {
               §=!=§ = "createsprite";
               while(true)
               {
                  §;t§ = "scroll";
                  loop2:
                  while(true)
                  {
                     §7;§ = "zoom";
                     while(true)
                     {
                        §^-§ = "playsound";
                        continue loop0;
                        addr49:
                        while(_loc2_ || _loc2_)
                        {
                           continue loop2;
                        }
                     }
                  }
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  §5H§ = "fitheight";
                  §§goto(addr49);
               }
            }
         }
         while(true)
         {
            §+M§ = "fitwidth";
            §§goto(addr78);
         }
      }
      
      private var §"!#§:Number;
      
      private var §2-§:Number;
      
      public function §'!U§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§"!#§ = param1;
               while(true)
               {
                  this.§2-§ = param2;
                  continue loop0;
                  addr57:
                  if(!(_loc3_ && param1))
                  {
                     §§goto(addr25);
                  }
               }
            }
         }
         while(isNaN(this.§2-§))
         {
            §§goto(addr35);
         }
         addr25:
      }
      
      public function get time() : Number
      {
         return this.§"!#§;
      }
      
      public function get duration() : Number
      {
         return this.§2-§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§!]§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            §§push(param1);
            §§push(this.time);
            if(_loc5_ || param3)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(_loc5_)
               {
                  §§push(false);
                  if(_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr64:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr64);
      }
      
      public function clone() : §'!U§
      {
         return new §'!U§(this.time,this.duration);
      }
   }
}
