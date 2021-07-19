package §<!0§
{
   import §2`§.§%!!§;
   import §3!J§.Sprite;
   
   public class §=!?§
   {
      
      public static const §%",§:String = "setreferencesize";
      
      public static const §@o§:String = "createsprite";
      
      public static const SCROLL:String = "scroll";
      
      public static const §[!v§:String = "zoom";
      
      public static const §`!1§:String = "playsound";
      
      public static const §3!X§:String = "fitwidth";
      
      public static const §1!6§:String = "fitheight";
      
      public static const §`P§:String = "set_bg_colour";
      
      public static const END:String = "end";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §%",§ = "setreferencesize";
            loop0:
            while(true)
            {
               §@o§ = "createsprite";
               while(true)
               {
                  SCROLL = "scroll";
                  while(_loc2_ || _loc2_)
                  {
                     §`!1§ = "playsound";
                     loop4:
                     while(_loc2_)
                     {
                        §3!X§ = "fitwidth";
                        loop5:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              §1!6§ = "fitheight";
                              loop6:
                              while(!_loc1_)
                              {
                                 §`P§ = "set_bg_colour";
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop6;
                                    addr61:
                                    END = "end";
                                    if(_loc2_ || §=!?§)
                                    {
                                       return;
                                    }
                                 }
                                 continue loop4;
                              }
                              continue loop0;
                           }
                           addr109:
                           while(true)
                           {
                              §[!v§ = "zoom";
                              break loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      private var §'0§:Number;
      
      private var §;?§:Number;
      
      public function §=!?§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§'0§ = param1;
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     if(!(_loc3_ && param1))
                     {
                        if(!isNaN(this.§;?§))
                        {
                           break;
                        }
                        if(!(_loc4_ || param1))
                        {
                           break;
                        }
                        addr57:
                        continue;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         while(true)
         {
            this.§;?§ = param2;
            §§goto(addr62);
         }
      }
      
      public function get time() : Number
      {
         return this.§'0§;
      }
      
      public function get duration() : Number
      {
         return this.§;?§;
      }
      
      public function update(param1:Number, param2:Sprite, param3:§%!!§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            §§push(param1);
            §§push(this.time);
            if(_loc4_ || param2)
            {
               §§push(§§pop() + this.duration);
            }
            if(§§pop() >= §§pop())
            {
               if(!(_loc5_ && this))
               {
                  §§push(false);
                  if(!(_loc5_ && param1))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr73:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr73);
      }
      
      public function clone() : §=!?§
      {
         return new §=!?§(this.time,this.duration);
      }
   }
}
