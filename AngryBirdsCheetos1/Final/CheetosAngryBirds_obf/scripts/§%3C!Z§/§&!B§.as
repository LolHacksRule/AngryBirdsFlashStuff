package §<!Z§
{
   import §!X§.§86§;
   import §5!M§.§7!0§;
   import §=?§.§<Q§;
   import §=?§.§>!O§;
   import §=?§.§^!M§;
   
   public class §&!B§ extends §^!M§
   {
       
      
      protected var §]!6§:Vector.<§%!+§>;
      
      private var §@!E§:int;
      
      public function §&!B§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§]!6§ = new Vector.<§%!+§>();
         }
         do
         {
            super(param1);
         }
         while(!(_loc3_ || this));
         
      }
      
      public static function §&O§(param1:String) : §^!M§
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc2_:§&!B§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = null;
         var _loc11_:§<Q§ = null;
         var _loc12_:* = null;
         var _loc13_:§>!O§ = null;
         var _loc14_:* = null;
         var _loc15_:§%!+§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc16_ || _loc2_)
         {
            if(_loc3_.length == 4)
            {
               addr68:
               _loc2_ = new §&!B§(_loc3_[0]);
               _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
               _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
               _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
               if(_loc16_ || _loc3_)
               {
                  _loc7_ = 1;
               }
               loop0:
               while(true)
               {
                  §§push(_loc7_);
                  if(_loc16_ || _loc3_)
                  {
                     if(§§pop() >= _loc4_.length)
                     {
                        if(_loc16_)
                        {
                           addr175:
                           §§push(1);
                           if(_loc16_ || _loc3_)
                           {
                              _loc8_ = §§pop();
                              if(!(_loc17_ && §&!B§))
                              {
                                 while(true)
                                 {
                                    §§push(_loc8_);
                                    if(_loc16_)
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 addr254:
                                 _loc9_ = §§pop();
                                 if(!(_loc17_ && §&!B§))
                                 {
                                    while(true)
                                    {
                                       §§push(_loc9_);
                                       addr308:
                                       loop4:
                                       while(true)
                                       {
                                          if(§§pop() < _loc6_.length)
                                          {
                                             §§push(_loc6_[_loc9_]);
                                             while(true)
                                             {
                                                _loc14_ = §§pop();
                                                if(!_loc16_)
                                                {
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             addr311:
                                             return _loc2_;
                                             addr268:
                                          }
                                          §§goto(addr311);
                                       }
                                    }
                                    addr307:
                                 }
                                 while(true)
                                 {
                                    if(_loc15_ = §%!+§.§&O§(_loc14_))
                                    {
                                       if(_loc16_ || _loc3_)
                                       {
                                          _loc2_.§]!6§.push(_loc15_);
                                          if(_loc16_ || _loc3_)
                                          {
                                             addr306:
                                             _loc9_++;
                                          }
                                       }
                                       §§goto(addr307);
                                    }
                                    §§goto(addr306);
                                 }
                                 addr233:
                                 addr271:
                              }
                              addr246:
                              §§push(1);
                              if(!(_loc17_ && _loc3_))
                              {
                                 §§goto(addr254);
                              }
                              §§goto(addr308);
                           }
                           §§goto(addr254);
                        }
                        §§goto(addr311);
                     }
                     else
                     {
                        §§push(_loc4_[_loc7_]);
                        if(!(_loc17_ && param1))
                        {
                           _loc10_ = §§pop();
                           if(_loc16_ || _loc3_)
                           {
                              if(_loc11_ = §<Q§.§&O§(_loc10_))
                              {
                                 if(!(_loc17_ && §&!B§))
                                 {
                                    _loc2_.§+>§.push(_loc11_);
                                    if(!(_loc16_ || _loc3_))
                                    {
                                       continue;
                                    }
                                 }
                              }
                              _loc7_++;
                              continue;
                           }
                           §§goto(addr175);
                        }
                     }
                     §§goto(addr268);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop() < _loc5_.length)
                  {
                     §§push(_loc5_[_loc8_]);
                     if(_loc16_ || §&!B§)
                     {
                        _loc12_ = §§pop();
                        if(!(_loc17_ && §&!B§))
                        {
                           if(_loc13_ = §>!O§.§&O§(_loc12_))
                           {
                              if(!_loc17_)
                              {
                                 _loc2_.§8=§.push(_loc13_);
                                 if(_loc16_ || §&!B§)
                                 {
                                    addr232:
                                    _loc8_++;
                                 }
                              }
                              §§goto(addr233);
                           }
                           §§goto(addr232);
                        }
                        §§goto(addr271);
                     }
                     break;
                  }
                  if(_loc16_ || param1)
                  {
                     §§goto(addr246);
                  }
                  §§goto(addr254);
               }
            }
            §§goto(addr311);
         }
         §§goto(addr68);
      }
      
      public function §^p§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!§[K§)
            {
               if(_loc2_ || _loc2_)
               {
                  addr47:
                  this.§]!6§.push(new §%!+§(param1));
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      override public function toString() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(super.toString());
         if(!(_loc3_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            §§push(_loc1_);
            if(_loc2_ || this)
            {
               §§push(§§pop() + (§^!M§.DELIM + this.§>'§()));
               if(_loc2_ || _loc1_)
               {
                  _loc1_ = §§pop();
                  addr72:
                  return _loc1_;
               }
            }
         }
         §§goto(addr72);
      }
      
      private function §>'§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         if(_loc4_ || _loc3_)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() + this.§]!6§.length.toString());
            }
            _loc1_ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= this.§]!6§.length)
            {
               if(_loc4_)
               {
                  §§push(_loc1_);
                  if(_loc4_ || _loc2_)
                  {
                     if(_loc4_)
                     {
                        if(!(_loc3_ && _loc1_))
                        {
                           break;
                        }
                        addr125:
                        §§push(§§pop() + §^!M§.INTERNAL_DELIM);
                        while(true)
                        {
                           _loc1_ = §§pop();
                           addr130:
                           while(true)
                           {
                              §§push(_loc1_);
                           }
                        }
                        addr129:
                     }
                     while(true)
                     {
                        §§push(§§pop() + this.§]!6§[_loc2_].toString());
                        §§goto(addr130);
                     }
                     addr96:
                  }
                  while(true)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_ = §§pop();
                        loop3:
                        while(true)
                        {
                           _loc2_++;
                           addr84:
                           do
                           {
                              if(!_loc4_)
                              {
                                 continue loop3;
                              }
                           }
                           while(_loc3_ && this);
                           
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr129);
                     }
                     §§goto(addr130);
                     §§goto(addr96);
                  }
               }
               §§goto(addr84);
            }
            else
            {
               §§push(_loc1_);
            }
            §§goto(addr125);
         }
         return §§pop();
      }
      
      override public function step(param1:§86§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§%!+§ = null;
         if(_loc5_ || param1)
         {
            if(this.§]!6§.length > this.§@!E§)
            {
               if(!(_loc6_ && param1))
               {
                  _loc2_ = this.§]!6§[this.§@!E§];
                  if(_loc5_ || _loc2_)
                  {
                     if(_loc2_.step == currentStep)
                     {
                        if(!_loc6_)
                        {
                           (param1.slingshot as §7!0§).§<!<§();
                           if(_loc5_ || _loc2_)
                           {
                           }
                           addr106:
                           super.step(param1);
                           §§goto(addr109);
                        }
                        var _loc3_:*;
                        §§push((_loc3_ = this).§@!E§);
                        if(_loc5_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc4_:* = §§pop();
                        if(_loc5_)
                        {
                           _loc3_.§@!E§ = _loc4_;
                        }
                     }
                  }
               }
               addr109:
               return;
            }
         }
         §§goto(addr106);
      }
   }
}
