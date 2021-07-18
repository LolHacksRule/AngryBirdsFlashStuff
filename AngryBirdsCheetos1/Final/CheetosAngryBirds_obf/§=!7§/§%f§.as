package §=!7§
{
   import § `§.§2w§;
   import §]@§.Sprite;
   
   public class §%f§
   {
      
      public static const §]=§:String = "setreferencesize";
      
      public static const §,H§:String = "createsprite";
      
      public static const §2k§:String = "scroll";
      
      public static const §7g§:String = "zoom";
      
      public static const §`F§:String = "playsound";
      
      public static const §<!B§:String = "fitwidth";
      
      public static const §]!!§:String = "fitheight";
      
      public static const §7!8§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §]=§ = "setreferencesize";
            loop0:
            while(true)
            {
               §,H§ = "createsprite";
               loop1:
               while(true)
               {
                  §2k§ = "scroll";
                  loop2:
                  while(true)
                  {
                     §7g§ = "zoom";
                     loop3:
                     while(true)
                     {
                        §`F§ = "playsound";
                        while(true)
                        {
                           §<!B§ = "fitwidth";
                           loop5:
                           while(!(_loc2_ && _loc2_))
                           {
                              §]!!§ = "fitheight";
                              while(!_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    §7!8§ = "set_bg_colour";
                                    loop7:
                                    while(!(_loc2_ && §%f§))
                                    {
                                       continue loop5;
                                       while(true)
                                       {
                                          END = "end";
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             continue loop3;
                                          }
                                          continue loop7;
                                       }
                                       if(_loc1_ || _loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          §§goto(addr67);
                                       }
                                       continue loop5;
                                       return;
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      private var §3-§:Number;
      
      private var §1s§:Number;
      
      public function §%f§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§3-§ = param1;
               loop1:
               while(true)
               {
                  this.§1s§ = param2;
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(!isNaN(this.§1s§))
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
         §§goto(addr53);
      }
      
      public function get time() : Number
      {
         return this.§3-§;
      }
      
      public function get duration() : Number
      {
         return this.§1s§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§2w§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            §§push(param1);
            §§push(this.time);
            if(_loc4_)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(!_loc5_)
               {
                  §§push(false);
                  if(!(_loc5_ && param3))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr63:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr63);
      }
      
      public function clone() : §%f§
      {
         return new §%f§(this.time,this.duration);
      }
   }
}
