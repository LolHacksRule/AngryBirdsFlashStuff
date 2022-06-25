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
         if(!(_loc2_ && _loc1_))
         {
            §^!$§ = "setreferencesize";
            while(true)
            {
               §>!Y§ = "createsprite";
               loop7:
               while(!(_loc2_ && §8d§))
               {
                  END = "end";
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     addr36:
                     if(_loc1_ || _loc2_)
                     {
                        return;
                     }
                     loop5:
                     while(true)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           §else § = "fitheight";
                           while(!(_loc2_ && §8d§))
                           {
                              §`J§ = "set_bg_colour";
                              continue loop7;
                           }
                           while(true)
                           {
                              §!n§ = "zoom";
                              addr113:
                              while(true)
                              {
                                 §`!F§ = "playsound";
                              }
                              §§goto(addr70);
                           }
                           addr70:
                        }
                        while(_loc1_)
                        {
                           §>%§ = "fitwidth";
                           continue loop5;
                        }
                        §§goto(addr113);
                     }
                     while(true)
                     {
                        §4'§ = "scroll";
                        §§goto(addr118);
                     }
                     addr123:
                  }
                  §§goto(addr70);
               }
            }
         }
         §§goto(addr123);
      }
      
      private var §=U§:Number;
      
      private var §[1§:Number;
      
      public function §8d§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§=U§ = param1;
               loop1:
               while(_loc4_)
               {
                  this.§[1§ = param2;
                  loop2:
                  while(true)
                  {
                     if(!(_loc3_ && this))
                     {
                        if(isNaN(this.§[1§))
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              while(true)
                              {
                                 this.§[1§ = 0;
                              }
                              addr57:
                           }
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
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
         if(!(_loc4_ && param2))
         {
            §§push(param1);
            §§push(this.time);
            if(_loc5_)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(_loc5_ || param2)
               {
                  addr50:
                  §§push(false);
                  if(_loc5_)
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
            §§goto(addr54);
         }
         §§goto(addr50);
      }
      
      public function clone() : §8d§
      {
         return new §8d§(this.time,this.duration);
      }
   }
}
