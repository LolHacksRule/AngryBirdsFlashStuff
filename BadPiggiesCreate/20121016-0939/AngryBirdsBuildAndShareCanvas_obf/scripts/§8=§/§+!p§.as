package §8=§
{
   import §<!3§.§"`§;
   import flash.utils.Dictionary;
   
   public class §+!p§ extends §4"+§
   {
       
      
      protected var §,_§:Dictionary;
      
      protected var §"!c§:Object = null;
      
      protected var §^"?§:Dictionary;
      
      protected var §-!m§:Dictionary;
      
      public function §+!p§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§-!m§ = new Dictionary();
         }
         loop0:
         while(true)
         {
            this.§,_§ = new Dictionary();
            loop1:
            do
            {
               this.§^"?§ = new Dictionary();
               while(!_loc2_)
               {
                  super();
                  if(_loc1_ || _loc1_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!_loc1_);
            
            return;
         }
      }
      
      public static function §>!X§(param1:§"`§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.§0!B§(§+!p§,Object,"*");
         }
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§"!c§[param1] = param2;
         }
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§,_§[param1] = param2;
         }
         do
         {
            this.§^"?§["dest." + param1] = param3;
         }
         while(!_loc4_);
         
      }
      
      override protected function newInstance() : §4"+§
      {
         return new §+!p§();
      }
      
      override public function get target() : Object
      {
         return this.§"!c§;
      }
      
      private function §&'§(param1:Object, param2:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            if(_loc7_)
            {
               param1[_loc3_] = param2[_loc3_];
            }
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§-!m§[param1] = param2;
         }
         do
         {
            this.§^"?§["source." + param1] = param3;
         }
         while(!_loc5_);
         
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = null;
         §§push(1 - param1);
         if(_loc9_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Object = this.§"!c§;
         var _loc4_:Dictionary = this.§,_§;
         var _loc5_:Dictionary = this.§-!m§;
         for(_loc6_ in _loc4_)
         {
            if(!(_loc10_ && param1))
            {
               _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
            }
         }
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§"!c§ = param1;
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:Object = this.§"!c§;
         var _loc3_:Dictionary = this.§-!m§;
         var _loc4_:Dictionary = this.§,_§;
         var _loc5_:Dictionary = this.§^"?§;
         var _loc6_:int = 0;
         var _loc7_:* = _loc3_;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(!(_loc8_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc9_ || _loc3_)
                  {
                     if(!_loc8_)
                     {
                        if(!(_loc8_ && _loc1_))
                        {
                           _loc6_ = 0;
                           if(_loc9_ || _loc1_)
                           {
                              addr146:
                              _loc7_ = _loc4_;
                              addr168:
                              if(!(_loc8_ && _loc3_))
                              {
                                 addr220:
                                 §§push(§§hasnext(_loc7_,_loc6_));
                                 break;
                              }
                              _loc4_[_loc1_] += _loc2_[_loc1_];
                              if(!(_loc8_ && _loc3_))
                              {
                                 if(false)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc3_[_loc1_] == undefined)
                                       {
                                          while(true)
                                          {
                                             _loc3_[_loc1_] = _loc2_[_loc1_];
                                             loop10:
                                             while(!_loc8_)
                                             {
                                                while(_loc5_["dest." + _loc1_])
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         continue loop10;
                                                      }
                                                   }
                                                   §§goto(addr168);
                                                }
                                                §§goto(addr220);
                                             }
                                             addr219:
                                             while(true)
                                             {
                                                continue loop8;
                                             }
                                          }
                                          addr193:
                                       }
                                       §§goto(addr157);
                                    }
                                 }
                                 §§goto(addr220);
                              }
                              §§goto(addr193);
                           }
                           addr223:
                        }
                        return;
                     }
                     §§goto(addr146);
                  }
                  addr222:
                  §§goto(addr223);
               }
               else
               {
                  _loc1_ = §§nextname(_loc6_,_loc7_);
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        if(_loc4_[_loc1_] == undefined)
                        {
                           while(_loc9_)
                           {
                              _loc4_[_loc1_] = _loc2_[_loc1_];
                              while(true)
                              {
                              }
                           }
                           continue loop1;
                           addr83:
                        }
                        while(_loc5_["source." + _loc1_])
                        {
                           if(!(_loc8_ && this))
                           {
                              if(_loc9_)
                              {
                                 _loc3_[_loc1_] += _loc2_[_loc1_];
                                 addr68:
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr83);
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr68);
                        }
                        continue loop0;
                     }
                  }
               }
            }
            break;
         }
         while(§§pop())
         {
            _loc1_ = §§nextname(_loc6_,_loc7_);
            §§goto(addr219);
            §§goto(addr220);
         }
         §§goto(addr222);
      }
      
      override public function getObject(param1:String) : Object
      {
         return this.§"!c§[param1];
      }
      
      override protected function copyFrom(param1:§4"+§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§+!p§ = param1 as §+!p§;
         if(!(_loc4_ && _loc2_))
         {
            this.§"!c§ = _loc2_.§"!c§;
            loop0:
            do
            {
               this.§&'§(this.§-!m§,_loc2_.§-!m§);
               while(true)
               {
                  this.§&'§(this.§,_§,_loc2_.§,_§);
                  while(_loc3_)
                  {
                     this.§&'§(this.§^"?§,_loc2_.§^"?§);
                     if(_loc3_ || _loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc3_);
            
         }
      }
   }
}
