package §`",§
{
   import §+!-§.Sprite;
   import §;"7§.§="<§;
   
   public class §7!s§
   {
      
      public static const §>=§:String = "setreferencesize";
      
      public static const §"B§:String = "createsprite";
      
      public static const §+";§:String = "scroll";
      
      public static const §5@§:String = "zoom";
      
      public static const §4!S§:String = "playsound";
      
      public static const §`"7§:String = "fitwidth";
      
      public static const §<a§:String = "fitheight";
      
      public static const §=$§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §>=§ = "setreferencesize";
            while(true)
            {
               §"B§ = "createsprite";
               while(_loc1_)
               {
                  §+";§ = "scroll";
                  addr84:
                  if(!(_loc2_ && §7!s§))
                  {
                     §<a§ = "fitheight";
                     loop6:
                     for(; _loc1_; while(true)
                     {
                        if(_loc2_ && _loc2_)
                        {
                           continue loop6;
                        }
                        §§goto(addr46);
                        §§goto(addr53);
                     },§§goto(addr96))
                     {
                        if(!_loc2_)
                        {
                           §=$§ = "set_bg_colour";
                           continue;
                        }
                        addr106:
                        while(true)
                        {
                           §5@§ = "zoom";
                           addr101:
                           while(true)
                           {
                              §4!S§ = "playsound";
                              addr96:
                              while(true)
                              {
                                 §`"7§ = "fitwidth";
                                 break loop6;
                                 addr46:
                                 if(_loc1_ || §7!s§)
                                 {
                                    END = "end";
                                    if(_loc1_)
                                    {
                                       return;
                                    }
                                    continue loop6;
                                    addr53:
                                 }
                              }
                              break loop6;
                           }
                        }
                     }
                     while(true)
                     {
                        if(!(_loc2_ && §7!s§))
                        {
                           §§goto(addr84);
                        }
                        §§goto(addr101);
                     }
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      private var §9R§:Number;
      
      private var §;"4§:Number;
      
      public function §7!s§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§9R§ = param1;
               addr68:
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §§goto(addr24);
            }
         }
         loop1:
         while(true)
         {
            this.§;"4§ = param2;
            while(isNaN(this.§;"4§))
            {
               if(_loc3_ || param2)
               {
                  if(!(_loc4_ && this))
                  {
                     this.§;"4§ = 0;
                     continue loop1;
                  }
                  continue;
                  continue;
               }
               continue loop1;
            }
            addr24:
            return;
         }
      }
      
      public function get time() : Number
      {
         return this.§9R§;
      }
      
      public function get duration() : Number
      {
         return this.§;"4§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§="<§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1);
            §§push(this.time);
            if(!(_loc5_ && param3))
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(_loc4_ || this)
               {
                  §§push(false);
                  if(_loc4_)
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
      
      public function clone() : §7!s§
      {
         return new §7!s§(this.time,this.duration);
      }
   }
}
