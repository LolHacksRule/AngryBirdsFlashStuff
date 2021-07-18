package §%%§
{
   import §&"5§.§7!P§;
   import §default§.Sprite;
   
   public class §#K§
   {
      
      public static const §@"9§:String = "setreferencesize";
      
      public static const §5L§:String = "createsprite";
      
      public static const §;!W§:String = "scroll";
      
      public static const §-!i§:String = "zoom";
      
      public static const §-v§:String = "playsound";
      
      public static const §9b§:String = "fitwidth";
      
      public static const §5X§:String = "fitheight";
      
      public static const §`i§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@"9§ = "setreferencesize";
            while(true)
            {
               §5L§ = "createsprite";
            }
            addr118:
         }
         loop1:
         while(true)
         {
            §;!W§ = "scroll";
            loop2:
            while(true)
            {
               §-!i§ = "zoom";
               loop3:
               while(_loc2_)
               {
                  §-v§ = "playsound";
                  while(true)
                  {
                     §9b§ = "fitwidth";
                     loop5:
                     while(!(_loc1_ && _loc1_))
                     {
                        §5X§ = "fitheight";
                        loop6:
                        while(_loc2_)
                        {
                           §`i§ = "set_bg_colour";
                           while(true)
                           {
                              if(!(_loc1_ && §#K§))
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop6;
                              addr63:
                              END = "end";
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    return;
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop2;
                        }
                        continue loop3;
                     }
                  }
               }
               §§goto(addr118);
            }
         }
      }
      
      private var §7A§:Number;
      
      private var §7X§:Number;
      
      public function §#K§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§7A§ = param1;
            loop1:
            while(true)
            {
               this.§7X§ = param2;
               while(true)
               {
                  if(_loc4_)
                  {
                     if(!isNaN(this.§7X§))
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        break;
                     }
                     addr59:
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                     continue;
                  }
                  continue loop1;
               }
               return;
            }
         }
      }
      
      public function get time() : Number
      {
         return this.§7A§;
      }
      
      public function get duration() : Number
      {
         return this.§7X§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§7!P§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1);
            §§push(this.time);
            if(_loc5_ || param2)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(!(_loc4_ && this))
               {
                  §§push(false);
                  if(_loc5_ || param2)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr69:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr69);
      }
      
      public function clone() : §#K§
      {
         return new §#K§(this.time,this.duration);
      }
   }
}
