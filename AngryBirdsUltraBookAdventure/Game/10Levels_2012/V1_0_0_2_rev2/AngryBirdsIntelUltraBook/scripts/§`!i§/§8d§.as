package §`!i§
{
   import §'!9§.Sprite;
   import §-w§.§,Q§;
   
   public class §8d§
   {
      
      public static const §^!$§:String = "setreferencesize";
      
      public static const §>!Y§:String = "createsprite";
      
      public static const §4'§:String = "scroll";
      
      public static const §!n§:String = "zoom";
      
      public static const §`!F§:String = "playsound";
      
      public static const §>%§:String = "fitwidth";
      
      public static const §else §:String = "fitheight";
      
      public static const §`J§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^!$§ = "setreferencesize";
            loop0:
            while(true)
            {
               §>!Y§ = "createsprite";
               while(true)
               {
                  §4'§ = "scroll";
                  addr106:
                  while(!_loc2_)
                  {
                  }
               }
               loop6:
               while(true)
               {
                  if(_loc2_ && §8d§)
                  {
                     continue loop0;
                  }
                  §else § = "fitheight";
                  loop7:
                  while(true)
                  {
                     §`J§ = "set_bg_colour";
                     while(true)
                     {
                        if(_loc1_)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop7;
                     }
                     continue loop6;
                  }
               }
            }
         }
         while(true)
         {
            §!n§ = "zoom";
            §§goto(addr101);
         }
      }
      
      private var §=U§:Number;
      
      private var §[1§:Number;
      
      public function §8d§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§=U§ = param1;
               loop1:
               while(true)
               {
                  this.§[1§ = param2;
                  while(true)
                  {
                     if(!(_loc3_ && param2))
                     {
                        if(!isNaN(this.§[1§))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr64);
      }
      
      public function get time() : Number
      {
         return this.§=U§;
      }
      
      public function get duration() : Number
      {
         return this.§[1§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§,Q§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1);
            §§push(this.time);
            if(!(_loc4_ && param3))
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(_loc5_)
               {
                  §§push(false);
                  if(!(_loc4_ && param2))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr54:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr54);
      }
      
      public function clone() : §8d§
      {
         return new §8d§(this.time,this.duration);
      }
   }
}
