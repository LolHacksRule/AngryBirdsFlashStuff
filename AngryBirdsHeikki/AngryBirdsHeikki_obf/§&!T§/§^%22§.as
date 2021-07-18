package §&!T§
{
   import §"!I§.§9§;
   import §"!I§.§94§;
   import §2Y§.Sprite;
   import §5!1§.§"!X§;
   import §5!1§.§&[§;
   import §9b§.§"!S§;
   import §=!<§.§8!!§;
   
   public class §^"§ extends §94§
   {
      
      private static const §@p§:Number = 10;
      
      public static const §]`§:Number = 1.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §@p§ = 10;
            do
            {
               §]`§ = 1;
            }
            while(!_loc1_);
            
         }
      }
      
      private var §=S§:§&[§ = null;
      
      private var §2J§:Object;
      
      private var § !b§:Boolean;
      
      public function §^"§(param1:§9§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param3))
         {
            this.§2J§ = new Object();
            while(true)
            {
               this.§ !b§ = false;
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            super(param1,param2,param3,param4,param5);
            if(_loc7_)
            {
               if(!_loc6_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §;b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§ !b§ = true;
            do
            {
               this.setPivotTexture(§&!e§.getSubAnimation("normal").getFrame(0));
            }
            while(!_loc1_);
            
         }
      }
      
      public function §;o§(param1:Number, param2:Number, param3:Boolean = true) : §&[§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            §3+§ = false;
            while(true)
            {
               §3`§ = -1;
               loop1:
               while(true)
               {
                  this.§2J§.x = §"!d§;
                  loop2:
                  while(true)
                  {
                     this.§2J§.y = §,!W§;
                     loop3:
                     while(true)
                     {
                        this.§2J§.rotation = §^Y§;
                        while(!_loc5_)
                        {
                           continue loop1;
                           loop6:
                           while(!(_loc5_ && param2))
                           {
                              while(true)
                              {
                                 §§push(this.§=S§);
                                 loop8:
                                 while(true)
                                 {
                                    §§pop().play();
                                    loop9:
                                    while(_loc4_ || param3)
                                    {
                                       §§push(this.§=S§);
                                       while(!(_loc5_ && param2))
                                       {
                                          §§pop().onComplete = this.§;!<§;
                                          if(!(_loc5_ && param2))
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(this.§=S§);
                                                if(!_loc5_)
                                                {
                                                   return §§pop();
                                                }
                                                continue;
                                                continue;
                                             }
                                             continue loop6;
                                          }
                                          continue loop9;
                                       }
                                       continue loop8;
                                    }
                                    continue loop3;
                                 }
                                 addr94:
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
               if(!(_loc4_ || this))
               {
                  continue;
               }
               §§goto(addr94);
            }
         }
         while(true)
         {
            if(param3)
            {
               if(!(_loc5_ && param2))
               {
                  this.§=S§ = §"!X§.§ s§.§=!,§(§"!X§.§ s§.§%!;§(this.§2J§,{
                     "x":param1,
                     "rotation":-360
                  },null,§]`§),§"!X§.§ s§.§0<§(§"!X§.§ s§.§%!;§(this.§2J§,{"y":this.§2J§.y - §@p§},null,§]`§ / 2,§"!X§.§%!5§),§"!X§.§ s§.§%!;§(this.§2J§,{"y":param2},{"y":this.§2J§.y - §@p§},§]`§ / 2,§"!X§.§=!K§)));
               }
               §§goto(addr173);
            }
            else
            {
               this.§=S§ = §"!X§.§ s§.§%!;§(null,null,null,§^"§.§]`§);
            }
            §§goto(addr80);
         }
      }
      
      private function §;!<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            ((§"!S§.§-!7§ as §<!,§).slingshot as §%%§).§9!]§();
         }
         loop0:
         while(true)
         {
            this.§=S§ = null;
            while(true)
            {
               §^Y§ = this.§2J§.rotation;
               loop2:
               while(true)
               {
                  setPosition(this.§2J§.x,this.§2J§.y);
                  do
                  {
                     §3+§ = false;
                     continue loop2;
                  }
                  while(_loc1_ && _loc2_);
                  
                  return;
               }
               if(!(_loc1_ && this))
               {
                  continue loop0;
               }
            }
         }
      }
      
      override public function setPivotTexture(param1:§8!!§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§ !b§ != false)
            {
               super.setPivotTexture(param1);
               if(_loc3_ || _loc3_)
               {
                  if(_loc2_ && param1)
                  {
                     addr74:
                     super.setPivotTexture(§&!e§.getSubAnimation("no_helmet").getFrame(0));
                     addr81:
                  }
                  return;
               }
               §§goto(addr81);
            }
         }
         §§goto(addr74);
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            if(this.§=S§ == null)
            {
               super.update(param1,param2,param3);
               if(!_loc4_)
               {
                  if(_loc5_ || param3)
                  {
                     if(_loc4_)
                     {
                        addr94:
                        §^Y§ = this.§2J§.rotation;
                        loop1:
                        while(true)
                        {
                           setPosition(this.§2J§.x,this.§2J§.y);
                           addr72:
                           addr79:
                           while(_loc4_ && param3)
                           {
                              continue loop1;
                           }
                           addr62:
                           §1![§();
                        }
                     }
                     return;
                  }
                  §§goto(addr72);
               }
               §§goto(addr62);
            }
            §§goto(addr94);
         }
         §§goto(addr79);
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§=S§ != null)
            {
               if(!_loc3_)
               {
                  §§push(false);
                  if(_loc2_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr58:
                  return super.applyGravity(param1);
               }
               return §§pop();
            }
         }
         §§goto(addr58);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§=S§ == null)
            {
               do
               {
                  super.updateGroundControl(param1);
               }
               while(!_loc2_);
               
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
   }
}
