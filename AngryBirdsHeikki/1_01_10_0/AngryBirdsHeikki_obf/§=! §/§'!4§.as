package §=! §
{
   import flash.filters.ColorMatrixFilter;
   import flash.text.TextField;
   
   public class §'!4§
   {
      
      private static const §`y§:Number = 0.00392156862745098;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §`y§ = 1 / 255;
         }
      }
      
      private var §^!1§:TextField;
      
      private var §90§:uint;
      
      private var §@g§:uint;
      
      private var §;K§:uint;
      
      private var §&!&§:ColorMatrixFilter;
      
      public function §'!4§(param1:TextField, param2:uint = 0, param3:uint = 0, param4:uint = 0)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§^!1§ = param1;
            while(true)
            {
               this.§&!&§ = new ColorMatrixFilter();
               continue loop0;
               loop4:
               while(_loc6_ || this)
               {
                  this.§@g§ = param4;
                  while(true)
                  {
                     if(!(_loc5_ && param2))
                     {
                        addr41:
                        if(_loc5_ && this)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop4;
                  }
                  while(_loc6_)
                  {
                     this.§;K§ = param3;
                     continue loop4;
                     §§goto(addr41);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function set §!!E§(param1:TextField) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^!1§ = param1;
         }
      }
      
      public function get §!!E§() : TextField
      {
         return this.§^!1§;
      }
      
      public function set textColor(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§90§ = param1;
            do
            {
               this.§'p§();
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      public function get textColor() : uint
      {
         return this.§90§;
      }
      
      public function set §&!L§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;K§ = param1;
            do
            {
               this.§'p§();
            }
            while(!_loc3_);
            
         }
      }
      
      public function get §&!L§() : uint
      {
         return this.§;K§;
      }
      
      public function set §2!J§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§@g§ = param1;
         }
         do
         {
            this.§'p§();
         }
         while(!_loc2_);
         
      }
      
      public function get §2!J§() : uint
      {
         return this.§@g§;
      }
      
      private function §'p§() : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_)
         {
            this.§^!1§.textColor = 16711680;
         }
         var _loc1_:Array = this.§,!b§(this.§;K§);
         var _loc2_:Array = this.§,!b§(this.§90§);
         var _loc3_:Array = this.§,!b§(this.§@g§);
         var _loc4_:int = _loc1_[0];
         var _loc5_:int = _loc1_[1];
         var _loc6_:int = _loc1_[2];
         §§push(_loc2_[0] - 255);
         if(_loc13_)
         {
            §§push(§§pop() - _loc1_[0]);
            if(_loc13_)
            {
               §§push(§§pop() * §`y§);
               if(!(_loc14_ && _loc3_))
               {
                  §§push(§§pop() + 1);
                  if(!(_loc14_ && _loc3_))
                  {
                     addr86:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc2_[1] - 255);
                  if(_loc13_)
                  {
                     §§push(§§pop() - _loc1_[1]);
                     if(_loc13_ || this)
                     {
                        §§push(§§pop() * §`y§);
                        if(!(_loc14_ && this))
                        {
                           §§push(§§pop() + 1);
                           if(!_loc13_)
                           {
                           }
                           addr120:
                           var _loc8_:* = §§pop();
                           §§push(_loc2_[2] - 255);
                           if(_loc13_ || _loc2_)
                           {
                              §§push(§§pop() - _loc1_[2]);
                              if(!_loc14_)
                              {
                                 §§push(§§pop() * §`y§);
                                 if(!_loc13_)
                                 {
                                 }
                                 addr153:
                                 var _loc9_:Number = §§pop();
                                 addr152:
                                 §§push(_loc3_[0] - 255);
                                 if(_loc13_ || _loc3_)
                                 {
                                    §§push(§§pop() - _loc1_[0]);
                                    if(_loc13_ || _loc3_)
                                    {
                                       §§push(§`y§);
                                       if(!(_loc14_ && _loc1_))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc13_ || _loc2_)
                                          {
                                             addr217:
                                             §§push(§§pop() + 1);
                                             if(!(_loc14_ && _loc1_))
                                             {
                                                §§push(_loc7_);
                                             }
                                             var _loc10_:* = §§pop();
                                             §§push(_loc3_[1] - 255);
                                             if(!_loc14_)
                                             {
                                                §§push(§§pop() - _loc1_[1]);
                                                if(_loc13_)
                                                {
                                                   §§push(§`y§);
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc14_ && _loc2_))
                                                      {
                                                         addr251:
                                                         §§push(§§pop() + 1);
                                                         if(!_loc14_)
                                                         {
                                                            addr246:
                                                            §§push(_loc8_);
                                                         }
                                                         var _loc11_:* = §§pop();
                                                         §§push(_loc3_[2] - 255);
                                                         if(!(_loc14_ && _loc1_))
                                                         {
                                                            §§push(§§pop() - _loc1_[2]);
                                                            if(_loc13_ || _loc3_)
                                                            {
                                                               §§push(§`y§);
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc14_ && _loc2_)
                                                                  {
                                                                  }
                                                                  §§goto(addr300);
                                                               }
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc14_ && _loc3_)
                                                               {
                                                               }
                                                               addr300:
                                                               §§goto(addr299);
                                                            }
                                                            addr299:
                                                            §§push(§§pop() + 1);
                                                            if(!_loc14_)
                                                            {
                                                               §§push(_loc9_);
                                                            }
                                                            var _loc12_:Number = §§pop();
                                                            if(_loc13_ || _loc3_)
                                                            {
                                                               this.§&!&§.matrix = [_loc7_,_loc10_,0,0,_loc4_,_loc8_,_loc11_,0,0,_loc5_,_loc9_,_loc12_,0,0,_loc6_,0,0,0,1,0];
                                                               do
                                                               {
                                                                  this.§^!1§.filters = [this.§&!&§];
                                                               }
                                                               while(_loc14_ && this);
                                                               
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr300);
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc13_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                §§goto(addr251);
                                             }
                                             §§goto(addr246);
                                          }
                                          §§goto(addr217);
                                       }
                                       §§push(§§pop() - §§pop());
                                       if(_loc13_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                 }
                                 §§goto(addr217);
                              }
                              §§push(§§pop() + 1);
                              if(_loc13_ || _loc2_)
                              {
                                 §§goto(addr152);
                              }
                           }
                           §§goto(addr153);
                        }
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr120);
               }
            }
         }
         §§goto(addr86);
      }
      
      private function §,!b§(param1:uint) : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1 >> 16);
         if(!(_loc2_ && this))
         {
            §§push(255);
            if(!_loc2_)
            {
               addr41:
               §§push(§§pop() & §§pop());
               §§push(param1 >> 8);
               if(!_loc2_)
               {
                  §§push(255);
                  if(_loc3_)
                  {
                     addr60:
                     §§push(§§pop() & §§pop());
                     §§push(param1 & 255);
                  }
                  return null;
               }
            }
            §§goto(addr60);
         }
         §§goto(addr41);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§&!&§ = null;
            while(true)
            {
               this.§^!1§.filters = [];
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§^!1§ = null;
            if(_loc1_ || this)
            {
               if(!(_loc2_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
