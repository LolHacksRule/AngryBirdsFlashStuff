package §0§
{
   import §"E§.§&!h§;
   import flash.utils.Dictionary;
   
   public class §`B§ extends §#![§
   {
       
      
      protected var §8A§:Dictionary;
      
      protected var §[l§:Object = null;
      
      protected var §=!9§:Dictionary;
      
      protected var §`v§:Dictionary;
      
      public function §`B§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§`v§ = new Dictionary();
            while(true)
            {
               this.§8A§ = new Dictionary();
               while(_loc2_ || this)
               {
                  this.§=!9§ = new Dictionary();
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        super();
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public static function §;-§(param1:§&!h§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.§]!n§(§`B§,Object,"*");
         }
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§[l§[param1] = param2;
         }
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§8A§[param1] = param2;
            do
            {
               this.§=!9§["dest." + param1] = param3;
            }
            while(!(_loc4_ || param1));
            
         }
      }
      
      override protected function newInstance() : §#![§
      {
         return new §`B§();
      }
      
      override public function get target() : Object
      {
         return this.§[l§;
      }
      
      private function § !+§(param1:Object, param2:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            if(!_loc6_)
            {
               param1[_loc3_] = param2[_loc3_];
            }
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§`v§[param1] = param2;
         }
         do
         {
            this.§=!9§["source." + param1] = param3;
         }
         while(_loc4_ && param1);
         
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = null;
         §§push(1 - param1);
         if(!(_loc9_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Object = this.§[l§;
         var _loc4_:Dictionary = this.§8A§;
         var _loc5_:Dictionary = this.§`v§;
         for(_loc6_ in _loc4_)
         {
            if(!(_loc9_ && _loc3_))
            {
               _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
            }
         }
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§[l§ = param1;
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:Object = this.§[l§;
         var _loc3_:Dictionary = this.§`v§;
         var _loc4_:Dictionary = this.§8A§;
         var _loc5_:Dictionary = this.§=!9§;
         var _loc6_:int = 0;
         var _loc7_:* = _loc3_;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(!(_loc8_ && this))
            {
               if(!§§pop())
               {
                  if(_loc9_ || _loc2_)
                  {
                     if(_loc9_)
                     {
                        if(_loc9_)
                        {
                           _loc6_ = 0;
                           if(_loc9_ || _loc3_)
                           {
                              _loc7_ = _loc4_;
                              addr185:
                              if(_loc9_)
                              {
                                 addr220:
                                 §§push(§§hasnext(_loc7_,_loc6_));
                                 break;
                              }
                              if(false)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc3_[_loc1_] == undefined)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          _loc3_[_loc1_] = _loc2_[_loc1_];
                                          loop10:
                                          while(!_loc8_)
                                          {
                                             while(_loc5_["dest." + _loc1_])
                                             {
                                                if(!(_loc8_ && this))
                                                {
                                                   _loc4_[_loc1_] += _loc2_[_loc1_];
                                                }
                                                if(_loc8_ && _loc3_)
                                                {
                                                   continue loop10;
                                                }
                                                if(_loc8_)
                                                {
                                                   continue loop9;
                                                }
                                                §§goto(addr185);
                                             }
                                             §§goto(addr220);
                                          }
                                          addr219:
                                          while(true)
                                          {
                                             continue loop8;
                                          }
                                       }
                                    }
                                    §§goto(addr152);
                                 }
                              }
                              §§goto(addr220);
                           }
                           addr223:
                        }
                        return;
                     }
                     §§goto(addr223);
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
                           while(true)
                           {
                              _loc4_[_loc1_] = _loc2_[_loc1_];
                              addr96:
                              while(true)
                              {
                              }
                           }
                           addr90:
                        }
                        while(_loc5_["source." + _loc1_])
                        {
                           if(_loc9_ || this)
                           {
                              if(!_loc8_)
                              {
                                 continue loop1;
                              }
                           }
                           else
                           {
                              addr75:
                              if(!(_loc8_ && this))
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr96);
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
         return this.§[l§[param1];
      }
      
      override protected function copyFrom(param1:§#![§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§`B§ = param1 as §`B§;
         if(!_loc3_)
         {
            this.§[l§ = _loc2_.§[l§;
            while(true)
            {
               this.§ !+§(this.§`v§,_loc2_.§`v§);
               loop1:
               while(_loc4_)
               {
                  this.§ !+§(this.§8A§,_loc2_.§8A§);
                  while(true)
                  {
                     this.§ !+§(this.§=!9§,_loc2_.§=!9§);
                     if(_loc4_)
                     {
                        if(_loc4_)
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
         §§goto(addr68);
      }
   }
}
