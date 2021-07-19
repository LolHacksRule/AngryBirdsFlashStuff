package §7Z§
{
   import §2Y§.Sprite;
   import §=!<§.§>a§;
   
   public class §^!§
   {
      
      public static const §"%§:String = "setreferencesize";
      
      public static const §+R§:String = "createsprite";
      
      public static const §7!b§:String = "scroll";
      
      public static const §+q§:String = "zoom";
      
      public static const §"Z§:String = "playsound";
      
      public static const §@u§:String = "fitwidth";
      
      public static const §"6§:String = "fitheight";
      
      public static const §"g§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §"%§ = "setreferencesize";
            loop0:
            while(true)
            {
               §+R§ = "createsprite";
               while(true)
               {
                  §7!b§ = "scroll";
                  continue loop0;
                  addr70:
                  if(!(_loc2_ && _loc1_))
                  {
                     loop8:
                     while(true)
                     {
                        END = "end";
                        if(!(_loc2_ && _loc2_))
                        {
                           if(_loc1_)
                           {
                              addr41:
                              if(!(_loc2_ && _loc1_))
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           addr106:
                           loop6:
                           while(!_loc2_)
                           {
                              §"g§ = "set_bg_colour";
                              while(!(_loc2_ && _loc1_))
                              {
                                 §§goto(addr70);
                                 continue loop8;
                              }
                              while(true)
                              {
                                 §@u§ = "fitwidth";
                                 break loop6;
                                 §§goto(addr53);
                              }
                              addr53:
                           }
                           while(!(_loc2_ && _loc2_))
                           {
                              §"6§ = "fitheight";
                              §§goto(addr82);
                           }
                           addr82:
                           while(true)
                           {
                              §"Z§ = "playsound";
                              §§goto(addr101);
                              §§goto(addr89);
                           }
                           addr89:
                        }
                        §§goto(addr53);
                     }
                     return;
                     addr77:
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      private var §+K§:Number;
      
      private var §;q§:Number;
      
      public function §^!§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§+K§ = param1;
            }
            addr84:
         }
         loop1:
         while(true)
         {
            this.§;q§ = param2;
            while(isNaN(this.§;q§))
            {
               if(_loc4_ || param2)
               {
                  if(_loc3_)
                  {
                     continue loop1;
                  }
                  this.§;q§ = 0;
               }
               if(!_loc4_)
               {
                  continue;
               }
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr84);
            }
            return;
         }
      }
      
      public function get time() : Number
      {
         return this.§+K§;
      }
      
      public function get duration() : Number
      {
         return this.§;q§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§>a§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1);
            §§push(this.time);
            if(_loc5_)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(_loc5_ || param1)
               {
                  addr45:
                  §§push(false);
                  if(_loc5_ || param3)
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
            §§goto(addr64);
         }
         §§goto(addr45);
      }
      
      public function clone() : §^!§
      {
         return new §^!§(this.time,this.duration);
      }
   }
}
