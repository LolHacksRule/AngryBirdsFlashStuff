package §#!c§
{
   import §2y§.§8!k§;
   import §2y§.§^! §;
   import §9j§.§2A§;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   
   public class §=""§ extends §8!k§
   {
      
      public static const §@[§:String = "buy";
      
      public static const §,!Q§:String = "default";
      
      public static const NORMAL:String = "normal";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §@[§ = "buy";
         }
         do
         {
            §,!Q§ = "default";
            do
            {
               NORMAL = "normal";
            }
            while(!(_loc2_ || _loc2_));
            
         }
         while(_loc1_ && _loc1_);
         
      }
      
      private var §`! §:MovieClip;
      
      private var §&?§:MovieClip;
      
      private var §+!P§:String;
      
      public function §=""§(param1:XML, param2:§^! §, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            param2 = "IconHolder";
         }
         var _loc4_:MovieClip = mClip.getChildByName(param2) as MovieClip;
         loop0:
         while(true)
         {
            if(_loc4_.numChildren > 0)
            {
               _loc4_.removeChildAt(0);
               continue;
            }
            loop1:
            while(true)
            {
               super.setIcon(param1,param2,param3);
               while(this.§`! § == null)
               {
                  if(_loc6_ || param2)
                  {
                     if(_loc5_ && param2)
                     {
                        continue loop0;
                     }
                     this.§`! § = param1;
                  }
                  if(_loc6_)
                  {
                     if(_loc6_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
               }
               return;
            }
         }
      }
      
      public function §81§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1;
         if(!_loc3_)
         {
            §§push(§@[§);
            if(!_loc3_)
            {
               §§push(_loc2_);
               if(_loc4_ || _loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_ || param1)
                     {
                        addr139:
                        §§push(0);
                        if(_loc3_)
                        {
                           addr187:
                        }
                     }
                     else
                     {
                        addr172:
                        §§push(1);
                        if(_loc3_ && _loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(NORMAL);
                     if(_loc4_ || param1)
                     {
                        §§push(_loc2_);
                        if(!(_loc3_ && _loc2_))
                        {
                           addr169:
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_)
                              {
                                 §§goto(addr172);
                              }
                           }
                           else
                           {
                              addr183:
                              if(§,!Q§ !== _loc2_)
                              {
                                 addr192:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       this.mClip.priceTag.visible = true;
                                       if(!(_loc3_ && this))
                                       {
                                          this.mClip.background.gotoAndStop("buy");
                                          break;
                                          addr97:
                                       }
                                       break;
                                    case 1:
                                       this.mClip.priceTag.visible = false;
                                       addr78:
                                       if(!_loc3_)
                                       {
                                          this.mClip.background.gotoAndStop("normal");
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr40:
                                             break;
                                          }
                                          break;
                                       }
                                       §§goto(addr97);
                                       break;
                                    case 2:
                                       this.mClip.priceTag.visible = false;
                                       if(_loc4_ || param1)
                                       {
                                          this.mClip.background.gotoAndStop("default");
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr78);
                                             }
                                             §§goto(addr40);
                                          }
                                          break;
                                       }
                                 }
                                 return;
                                 §§push(3);
                              }
                           }
                           §§goto(addr192);
                           §§goto(addr192);
                        }
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr192);
               }
               §§goto(addr169);
            }
            §§goto(addr183);
         }
         §§goto(addr139);
      }
      
      public function §1!A§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         if(_loc4_)
         {
            if(param2 > 0)
            {
               if(!_loc5_)
               {
                  addr98:
                  §§push(§2A§.§>!=§(param2));
                  if(_loc4_ || param2)
                  {
                     §§push(§§pop());
                  }
                  _loc3_ = §§pop();
               }
               while(true)
               {
                  this.§81§(§@[§);
                  loop1:
                  while(_loc4_ || this)
                  {
                     mClip.priceTag.itemPrice.text = _loc3_;
                     do
                     {
                        while(true)
                        {
                           this.§&!J§(param1);
                           if(_loc4_)
                           {
                              break;
                           }
                           continue loop1;
                           while(true)
                           {
                              if(_loc5_ && this)
                              {
                                 continue loop1;
                              }
                              §§goto(addr63);
                           }
                           addr63:
                        }
                     }
                     while(_loc5_ && param1);
                     
                     return;
                  }
               }
            }
            else
            {
               this.§81§(NORMAL);
            }
            §§goto(addr56);
         }
         §§goto(addr98);
      }
      
      private function §&!J§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§,!j§);
         §§push("Inventory_Item_");
         if(!_loc6_)
         {
            §§push(§§pop() + param1);
         }
         var _loc2_:Class = §§pop().§!!N§(§§pop());
         var _loc3_:MovieClip = new _loc2_();
         if(!(_loc6_ && this))
         {
            _loc3_.x = 31 - _loc3_.width * 0.5;
            if(_loc5_)
            {
               _loc3_.y = 31 - _loc3_.height * 0.5;
               addr56:
               if(!_loc6_)
               {
                  _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
                  if(_loc5_ || _loc2_)
                  {
                  }
                  §§goto(addr101);
               }
               this.setIcon(_loc3_);
            }
            addr101:
            return;
         }
         §§goto(addr56);
      }
      
      public function §3!R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§81§(§,!Q§);
            do
            {
               this.setIcon(this.§`! §);
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function §>!e§() : void
      {
         try
         {
            §#!H§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §7!E§() : void
      {
         try
         {
            §#!H§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
