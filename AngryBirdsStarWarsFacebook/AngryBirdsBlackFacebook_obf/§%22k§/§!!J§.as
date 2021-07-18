package §"k§
{
   import §,"N§.§@#B§;
   import §`!o§.§+"k§;
   import flash.net.URLLoader;
   
   public class §!!J§ extends §%!8§
   {
       
      
      private var §,!o§:Boolean = false;
      
      public function §!!J§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override protected function createURLLoader() : URLLoader
      {
         return new §+"k§();
      }
      
      public function get §&"S§() : Boolean
      {
         return this.§,!o§;
      }
      
      public function §^#<§(param1:§@#B§, param2:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || _loc3_)
         {
            if(this.§,!o§)
            {
               if(_loc7_)
               {
                  return;
               }
            }
         }
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < data.length)
            {
               if(data[_loc4_] is §=!g§)
               {
                  if(_loc7_ || param1)
                  {
                     §§push(_loc4_);
                     if(_loc7_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc7_)
                        {
                           continue;
                        }
                     }
                     _loc3_ = §§pop();
                     if(_loc7_ || this)
                     {
                     }
                     break;
                  }
                  break;
               }
               _loc4_++;
               if(_loc6_)
               {
                  break;
               }
               continue loop0;
            }
            var _loc5_:Array = this.§<R§(param1,5);
            if(_loc7_ || this)
            {
               data.splice.apply(null,[_loc3_ + 1,0].concat(_loc5_));
               do
               {
                  this.§,!o§ = true;
               }
               while(!_loc7_);
               
            }
            return;
         }
      }
      
      public function §`j§(param1:§@#B§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Array = param1.§0s§.getTotalScores().data;
         var _loc3_:* = int(data.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(_loc4_ || _loc3_)
               {
                  if(§§pop() < 0)
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        this.§,!o§ = false;
                     }
                     if(!_loc5_)
                     {
                        break;
                     }
                     while(_loc5_)
                     {
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr72:
                  }
                  else if(data[_loc3_] is §`#8§)
                  {
                     if(!_loc5_)
                     {
                        data.splice(_loc3_,1);
                     }
                     §§goto(addr99);
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                  }
               }
               while(true)
               {
                  §§push(§§pop() - 1);
               }
            }
            while(true)
            {
               _loc3_ = §§pop();
               §§goto(addr72);
            }
         }
      }
      
      private function §0!b§(param1:Array, param2:int = -1) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:int = param1.length;
         if(!_loc7_)
         {
            §§push(param2);
            if(_loc8_)
            {
               §§push(0);
               if(_loc8_)
               {
                  if(§§pop() <= §§pop())
                  {
                     if(!_loc7_)
                     {
                        return _loc3_;
                     }
                     addr57:
                     §§push(_loc4_);
                     if(_loc8_ || this)
                     {
                        §§goto(addr65);
                     }
                     §§goto(addr73);
                  }
                  else
                  {
                     addr40:
                     §§push(param2);
                     if(!(_loc7_ && this))
                     {
                        addr49:
                        if(§§pop() > _loc4_)
                        {
                           if(!(_loc7_ && param1))
                           {
                              §§goto(addr57);
                           }
                        }
                        §§goto(addr73);
                     }
                  }
                  addr65:
                  §§push(int(§§pop()));
                  if(_loc8_ || param1)
                  {
                     addr73:
                     param2 = §§pop();
                     §§push(0);
                  }
                  var _loc5_:* = §§pop();
                  var _loc6_:Array = new Array(param1.length);
                  while(true)
                  {
                     if(_loc3_.length >= param2)
                     {
                        if(!_loc7_)
                        {
                           if(!_loc7_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              while(true)
                              {
                                 if(_loc6_[_loc5_] == undefined)
                                 {
                                    while(_loc8_ || _loc3_)
                                    {
                                       _loc3_.push(param1[_loc5_]);
                                       while(true)
                                       {
                                          _loc6_[_loc5_] = true;
                                       }
                                    }
                                    addr127:
                                 }
                                 else
                                 {
                                    §§push(int(int(Math.random() * _loc4_)));
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    _loc5_ = §§pop();
                                 }
                              }
                              addr173:
                              while(true)
                              {
                                 _loc5_ = §§pop();
                                 continue loop1;
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc8_)
                           {
                              if(_loc8_ || _loc3_)
                              {
                                 break;
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr139);
                        }
                        continue;
                     }
                     §§push(int(int(Math.random() * _loc4_)));
                     §§goto(addr173);
                  }
                  return _loc3_;
               }
            }
            §§goto(addr49);
         }
         §§goto(addr40);
      }
      
      private function §<R§(param1:§@#B§, param2:int) : Array
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc6_:§]"V§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:§]"V§ = null;
         var _loc3_:Array = param1.§0s§.getTotalScores().data;
         var _loc4_:Array = this.§0!b§(_loc3_,_loc3_.length);
         var _loc5_:Array = [];
         for each(_loc6_ in _loc4_)
         {
            §§push(_loc6_ is §=!g§);
            if(_loc14_)
            {
               if(!§§pop())
               {
                  if(!(_loc13_ && this))
                  {
                     continue;
                  }
               }
               else
               {
                  §§push(param1.§;!A§.§'!H§(_loc6_.userId));
                  if(_loc14_ || _loc3_)
                  {
                     addr79:
                     if(!§§pop())
                     {
                        if(_loc14_ || param2)
                        {
                           addr97:
                           continue;
                        }
                     }
                     else
                     {
                        addr99:
                        _loc7_ = false;
                     }
                     for each(_loc8_ in param1.§!!C§.§'"?§.data)
                     {
                        §§push(_loc8_ is §=!g§);
                        if(!_loc13_)
                        {
                           if(!§§pop())
                           {
                              if(!_loc13_)
                              {
                                 continue;
                              }
                              addr132:
                              _loc7_ = true;
                              addr131:
                           }
                           else
                           {
                              if(_loc8_.userId != _loc6_.userId)
                              {
                                 continue;
                              }
                              if(!_loc13_)
                              {
                                 §§goto(addr131);
                              }
                           }
                           break;
                        }
                        §§goto(addr132);
                     }
                     if(_loc14_ || param1)
                     {
                        if(!_loc7_)
                        {
                           if(!_loc13_)
                           {
                              addr149:
                              _loc5_.push(new §`#8§(_loc6_.userId,_loc6_.userName,_loc6_.avatarString));
                              if(!(_loc13_ && this))
                              {
                                 if(_loc5_.length < param2)
                                 {
                                    continue;
                                 }
                              }
                           }
                           break;
                        }
                        continue;
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr99);
               }
               §§goto(addr97);
            }
            §§goto(addr79);
         }
         return _loc5_;
      }
   }
}
