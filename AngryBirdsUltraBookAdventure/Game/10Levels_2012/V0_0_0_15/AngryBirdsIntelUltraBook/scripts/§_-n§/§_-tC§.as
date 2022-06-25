package §_-n§
{
   import §_-8d§.§_-0FF§;
   import §_-uY§.Sprite;
   
   public class §_-tC§
   {
      
      public static const §_-Bj§:String = "setreferencesize";
      
      public static const §_-031§:String = "createsprite";
      
      public static const §_-DX§:String = "scroll";
      
      public static const §_-Cg§:String = "zoom";
      
      public static const §_-Rs§:String = "playsound";
      
      public static const §_-6q§:String = "fitwidth";
      
      public static const §_-05G§:String = "fitheight";
      
      public static const §_-Cz§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §_-Bj§ = "setreferencesize";
            while(true)
            {
               §_-031§ = "createsprite";
               while(true)
               {
                  §_-DX§ = "scroll";
                  loop2:
                  for(; !(_loc2_ && _loc1_); while(true)
                  {
                     if(_loc1_)
                     {
                        while(true)
                        {
                           §_-05G§ = "fitheight";
                           §§goto(addr77);
                        }
                        return;
                        addr60:
                        addr101:
                     }
                     break;
                     §§goto(addr65);
                  })
                  {
                     §_-Cg§ = "zoom";
                     loop3:
                     while(true)
                     {
                        §_-Rs§ = "playsound";
                        while(true)
                        {
                           §_-6q§ = "fitwidth";
                           continue loop2;
                           addr77:
                           loop7:
                           while(!(_loc2_ && _loc2_))
                           {
                              §_-Cz§ = "set_bg_colour";
                              while(_loc1_ || _loc1_)
                              {
                                 END = "end";
                                 if(_loc1_)
                                 {
                                    if(_loc1_ || _loc2_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop7;
                                    continue loop7;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr60);
            }
         }
         §§goto(addr101);
      }
      
      private var §_-063§:Number;
      
      private var §_-R8§:Number;
      
      public function §_-tC§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super();
            while(true)
            {
               this.§_-063§ = param1;
               loop1:
               while(true)
               {
                  this.§_-R8§ = param2;
                  while(isNaN(this.§_-R8§))
                  {
                     if(_loc4_ || _loc3_)
                     {
                        continue loop1;
                     }
                     if(!(_loc3_ && param2))
                     {
                        addr86:
                        break;
                     }
                  }
                  return;
               }
               if(_loc3_ && param2)
               {
                  continue;
               }
               this.§_-R8§ = 0;
               §§goto(addr79);
            }
         }
         §§goto(addr86);
      }
      
      public function get time() : Number
      {
         return this.§_-063§;
      }
      
      public function get duration() : Number
      {
         return this.§_-R8§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§_-0FF§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            §§push(param1);
            §§push(this.time);
            if(_loc4_ || param1)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(!_loc5_)
               {
                  addr49:
                  §§push(false);
                  if(!_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr53);
         }
         §§goto(addr49);
      }
      
      public function clone() : §_-tC§
      {
         return new §_-tC§(this.time,this.duration);
      }
   }
}
