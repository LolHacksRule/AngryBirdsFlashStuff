package §4!o§
{
   import § ! §.§5!x§;
   import §6![§.Sprite;
   
   public class §0!c§
   {
      
      public static const §=!m§:String = "setreferencesize";
      
      public static const §"h§:String = "createsprite";
      
      public static const SCROLL:String = "scroll";
      
      public static const §@""§:String = "zoom";
      
      public static const §2!Q§:String = "playsound";
      
      public static const §2!%§:String = "fitwidth";
      
      public static const §`"!§:String = "fitheight";
      
      public static const §7&§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §0!c§)
         {
            §=!m§ = "setreferencesize";
            loop0:
            while(true)
            {
               §"h§ = "createsprite";
               loop1:
               while(true)
               {
                  SCROLL = "scroll";
                  while(true)
                  {
                     §@""§ = "zoom";
                     continue loop1;
                     addr77:
                     loop4:
                     while(!(_loc2_ && _loc2_))
                     {
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        §2!%§ = "fitwidth";
                        loop5:
                        while(true)
                        {
                           §`"!§ = "fitheight";
                           loop6:
                           while(_loc1_)
                           {
                              while(true)
                              {
                                 §7&§ = "set_bg_colour";
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    if(_loc1_)
                                    {
                                       END = "end";
                                       if(_loc2_)
                                       {
                                          continue;
                                       }
                                       if(!_loc1_)
                                       {
                                          continue loop4;
                                       }
                                       §§goto(addr36);
                                       continue;
                                    }
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                              return;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      private var §?W§:Number;
      
      private var §0"§:Number;
      
      public function §0!c§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§?W§ = param1;
               addr46:
               if(_loc4_ && this)
               {
                  continue;
               }
               §§goto(addr19);
            }
         }
         while(true)
         {
            this.§0"§ = param2;
            while(!_loc4_)
            {
               if(isNaN(this.§0"§))
               {
                  if(!_loc4_)
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     this.§0"§ = 0;
                  }
                  §§goto(addr46);
               }
               addr19:
               return;
            }
         }
      }
      
      public function get time() : Number
      {
         return this.§?W§;
      }
      
      public function get duration() : Number
      {
         return this.§0"§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§5!x§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            §§push(param1);
            §§push(this.time);
            if(_loc4_)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(_loc4_ || this)
               {
                  addr49:
                  §§push(false);
                  if(!(_loc5_ && param3))
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
         §§goto(addr49);
      }
      
      public function clone() : §0!c§
      {
         return new §0!c§(this.time,this.duration);
      }
   }
}
