package §[N§
{
   import §1!E§.§#?§;
   import §1!E§.§,D§;
   import §8!;§.§`7§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   
   public class §16§ extends §,D§
   {
      
      public static const §5e§:String = "buy";
      
      public static const §1W§:String = "default";
      
      public static const NORMAL:String = "normal";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §5e§ = "buy";
         }
         do
         {
            §1W§ = "default";
            do
            {
               NORMAL = "normal";
            }
            while(!(_loc2_ || _loc1_));
            
         }
         while(!_loc2_);
         
      }
      
      private var §,!<§:MovieClip;
      
      private var §+X§:MovieClip;
      
      private var §5Z§:String;
      
      public function §16§(param1:XML, param2:§#?§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function setIcon(param1:MovieClip, param2:String = null, param3:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
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
               while(this.§,!<§ == null)
               {
                  if(_loc6_)
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                     if(!_loc6_)
                     {
                        continue loop1;
                     }
                     if(!(_loc6_ || param1))
                     {
                        continue loop0;
                     }
                     this.§,!<§ = param1;
                  }
                  break;
               }
               return;
            }
         }
      }
      
      public function §@!-§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1;
         if(!(_loc4_ && param1))
         {
            §§push(§5e§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        addr128:
                        §§push(0);
                        if(_loc4_ && param1)
                        {
                           addr176:
                        }
                     }
                     else
                     {
                        addr168:
                        §§push(2);
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr176);
                        }
                     }
                     §§goto(addr181);
                  }
                  else
                  {
                     §§push(NORMAL);
                     if(!_loc4_)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc2_))
                        {
                           addr158:
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_)
                              {
                                 §§push(1);
                                 if(_loc4_)
                                 {
                                    §§goto(addr176);
                                 }
                              }
                              else
                              {
                                 §§goto(addr168);
                              }
                              §§goto(addr181);
                           }
                           else
                           {
                              addr166:
                              §§push(§1W§);
                              §§push(_loc2_);
                           }
                           §§goto(addr168);
                        }
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr168);
                        }
                        else
                        {
                           §§push(3);
                        }
                        addr181:
                        switch(§§pop())
                        {
                           case 0:
                              this.mClip.priceTag.visible = true;
                              this.mClip.background.gotoAndStop("buy");
                              if(!_loc4_)
                              {
                                 break;
                              }
                              break;
                              addr96:
                           case 1:
                              this.mClip.priceTag.visible = false;
                              addr67:
                              if(_loc3_)
                              {
                                 this.mClip.background.gotoAndStop("normal");
                                 if(!(_loc4_ && this))
                                 {
                                    addr34:
                                    break;
                                 }
                                 break;
                              }
                              §§goto(addr96);
                              break;
                           case 2:
                              this.mClip.priceTag.visible = false;
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr67);
                              }
                        }
                        return;
                     }
                     §§goto(addr166);
                  }
               }
               §§goto(addr158);
            }
            §§goto(addr166);
         }
         §§goto(addr128);
      }
      
      public function §%Y§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         if(_loc5_)
         {
            if(param2 <= 0)
            {
               this.§@!-§(NORMAL);
               while(true)
               {
                  while(true)
                  {
                     this.§&'§(param1);
                     if(_loc4_)
                     {
                        break;
                     }
                     if(_loc5_ || this)
                     {
                        return;
                     }
                     loop2:
                     while(true)
                     {
                        if(!(_loc5_ || this))
                        {
                           continue;
                        }
                        if(!(_loc4_ && param2))
                        {
                           if(!(_loc4_ && this))
                           {
                              break;
                           }
                           addr104:
                           while(true)
                           {
                              §§push(§`7§.§&K§(param2));
                              if(_loc5_)
                              {
                                 §§push(§§pop());
                              }
                              _loc3_ = §§pop();
                           }
                        }
                        while(true)
                        {
                           this.§@!-§(§5e§);
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      private function §&'§(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§`!t§);
         §§push("Inventory_Item_");
         if(!_loc5_)
         {
            §§push(§§pop() + param1);
         }
         var _loc2_:Class = §§pop().§=J§(§§pop());
         var _loc3_:MovieClip = new _loc2_();
         if(!(_loc5_ && this))
         {
            _loc3_.x = 31 - _loc3_.width * 0.5;
            if(_loc6_ || _loc3_)
            {
               _loc3_.y = 31 - _loc3_.height * 0.5;
               if(!_loc5_)
               {
                  _loc3_.scaleX *= _loc3_.scaleY = _loc3_.scaleY * 0.9;
                  if(!_loc5_)
                  {
                     addr99:
                     this.setIcon(_loc3_);
                  }
               }
            }
            return;
         }
         §§goto(addr99);
      }
      
      public function §7!k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§@!-§(§1W§);
            do
            {
               this.setIcon(this.§,!<§);
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function §=!C§() : void
      {
         try
         {
            §4?§.gotoAndStop("out");
         }
         catch(e:Error)
         {
         }
      }
      
      public function §?4§() : void
      {
         try
         {
            §4?§.gotoAndStop("over");
         }
         catch(e:Error)
         {
         }
      }
   }
}
