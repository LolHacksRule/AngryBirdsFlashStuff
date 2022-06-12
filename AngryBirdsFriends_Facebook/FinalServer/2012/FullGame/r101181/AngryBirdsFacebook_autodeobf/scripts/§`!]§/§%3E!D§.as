package §`!]§
{
   import §1!$§.Sprite;
   import §6!D§.§0Y§;
   
   public class §>!D§
   {
      
      public static const §]">§:String = "setreferencesize";
      
      public static const §?";§:String = "createsprite";
      
      public static const § !A§:String = "scroll";
      
      public static const §;"6§:String = "zoom";
      
      public static const §1d§:String = "playsound";
      
      public static const §,_§:String = "fitwidth";
      
      public static const §9"F§:String = "fitheight";
      
      public static const §]R§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §]">§ = "setreferencesize";
            while(true)
            {
               §?";§ = "createsprite";
               loop1:
               while(true)
               {
                  § !A§ = "scroll";
                  loop2:
                  while(true)
                  {
                     §;"6§ = "zoom";
                     while(true)
                     {
                        §1d§ = "playsound";
                        continue loop2;
                        loop6:
                        while(!(_loc2_ && §>!D§))
                        {
                           §]R§ = "set_bg_colour";
                           while(true)
                           {
                              if(!(_loc2_ && §>!D§))
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              addr89:
                              while(true)
                              {
                                 §9"F§ = "fitheight";
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(!_loc2_)
                                    {
                                       return;
                                       addr48:
                                    }
                                    continue loop1;
                                 }
                                 continue loop6;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §,_§ = "fitwidth";
               §§goto(addr89);
            }
         }
         §§goto(addr48);
      }
      
      private var §?!x§:Number;
      
      private var §[0§:Number;
      
      public function §>!D§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super();
            while(true)
            {
               this.§?!x§ = param1;
               while(true)
               {
                  this.§[0§ = param2;
                  addr73:
                  if(!(_loc4_ && param2))
                  {
                     §§goto(addr24);
                  }
               }
               addr53:
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               this.§[0§ = 0;
               §§goto(addr73);
            }
         }
         while(isNaN(this.§[0§))
         {
            if(_loc3_ || param1)
            {
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr53);
            }
            §§goto(addr73);
         }
         addr24:
      }
      
      public function get time() : Number
      {
         return this.§?!x§;
      }
      
      public function get duration() : Number
      {
         return this.§[0§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§0Y§) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            §§push(param1);
            §§push(this.time);
            if(!(_loc4_ && param2))
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(!(_loc4_ && this))
               {
                  addr65:
                  §§push(false);
                  if(_loc5_)
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
            §§goto(addr69);
         }
         §§goto(addr65);
      }
      
      public function clone() : §>!D§
      {
         return new §>!D§(this.time,this.duration);
      }
   }
}
