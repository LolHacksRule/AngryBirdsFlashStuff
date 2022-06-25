package §6J§
{
   import flash.utils.Dictionary;
   
   public class §?S§
   {
       
      
      private var §%g§:String = "";
      
      private var mName:String = "";
      
      private var §'v§:String = "";
      
      private var §,Q§:String = "";
      
      private var § I§:String = "";
      
      private var §;!#§:Array = null;
      
      private var § !E§:int = 0;
      
      private var §4A§:Array = null;
      
      private var §3!2§:Array;
      
      private var § !A§:Array;
      
      private var §[!6§:int = 0;
      
      private var §8c§:Dictionary;
      
      public function §?S§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§8c§ = new Dictionary();
            if(_loc2_)
            {
               addr25:
               super();
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §^9§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §81§(param1:String) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         var _loc3_:Number = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(§§pop() < this.levelsPerPage)
            {
               §§push(param1);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() + "-");
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(_loc3_);
                     if(!(_loc5_ && param1))
                     {
                        §§push(§§pop() + 1);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop());
               }
               _loc4_ = §§pop();
               if(!_loc5_)
               {
                  _loc2_.push(_loc4_);
                  if(_loc5_)
                  {
                     break;
                  }
               }
               §§push(_loc3_);
               if(!_loc5_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc5_ && _loc3_))
                     {
                        continue loop0;
                     }
                     continue;
                  }
               }
               continue loop0;
            }
            addr112:
            return _loc2_;
         }
      }
      
      public function §7!D§(param1:int) : Object
      {
         return this.§3!2§[param1];
      }
      
      public function §#2§(param1:int) : String
      {
         return this.§ !A§[param1];
      }
      
      public function §2!+§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§=$§().indexOf(param1) == -1);
         if(_loc2_ || _loc3_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function §=$§() : Array
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(_loc10_)
         {
            if(this.§4A§ == null)
            {
               addr35:
               _loc1_ = new Array();
               for each(_loc2_ in this.pageIndexes)
               {
                  _loc3_ = this.§81§(_loc2_);
                  if(_loc10_ || _loc3_)
                  {
                     var _loc7_:int = 0;
                     if(_loc10_ || this)
                     {
                        var _loc8_:* = _loc3_;
                        if(_loc10_ || _loc3_)
                        {
                        }
                        for each(_loc4_ in _loc8_)
                        {
                           if(!_loc9_)
                           {
                              _loc1_.push(_loc4_);
                           }
                        }
                     }
                  }
               }
               if(_loc10_ || _loc3_)
               {
                  this.§4A§ = _loc1_;
                  if(!_loc9_)
                  {
                     return _loc1_;
                  }
               }
            }
            return this.§4A§;
         }
         §§goto(addr35);
      }
      
      public function §'+§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() < this.pageIndexes.length)
               {
                  §§push(this.pageIndexes[_loc2_]);
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc3_ = §§pop();
                     if(!(_loc5_ && _loc2_))
                     {
                        addr54:
                        if(param1.indexOf(_loc3_ + "-") != 0)
                        {
                           _loc2_++;
                           if(!(_loc4_ || this))
                           {
                              addr103:
                              §§push(-1);
                           }
                           continue;
                           break;
                        }
                        if(!(_loc4_ || _loc3_))
                        {
                           continue;
                        }
                     }
                     §§push(_loc2_);
                     if(!_loc5_)
                     {
                        return §§pop();
                     }
                     break;
                  }
                  §§goto(addr54);
               }
               §§goto(addr103);
            }
            break;
         }
         return §§pop();
      }
      
      public function §&1§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = 0;
         §§push(param1);
         if(_loc6_)
         {
            §§push(§§pop().substring(0,param1.indexOf("-")));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(!(_loc5_ && _loc3_))
         {
            §§push(_loc3_);
            if(_loc6_)
            {
               if(§§pop() < this.levelsPerPage)
               {
                  if(!_loc5_)
                  {
                     §§push(_loc2_ + "-");
                     if(_loc6_ || _loc2_)
                     {
                        return §§pop() + (_loc3_ + 1);
                     }
                  }
                  addr89:
                  loop0:
                  while(true)
                  {
                     §§push(_loc4_);
                     while(§§pop() < this.pageIndexes.length)
                     {
                        §§push(this.pageIndexes);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(_loc4_);
                           if(!(_loc5_ && _loc3_))
                           {
                              if(§§pop()[§§pop()] != _loc2_)
                              {
                                 continue loop0;
                              }
                              if(_loc6_)
                              {
                                 §§push(_loc4_);
                                 if(!(_loc6_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(§§pop() + 1 >= this.pageIndexes.length)
                                 {
                                    break;
                                 }
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                              }
                              addr131:
                              §§push(this.pageIndexes);
                              §§push(_loc4_);
                           }
                           §§push(§§pop()[§§pop() + 1] + "-");
                           if(_loc6_ || this)
                           {
                              return §§pop() + 1;
                           }
                        }
                        §§goto(addr131);
                     }
                     addr173:
                     return null;
                  }
               }
               else
               {
                  §§push(0);
               }
               §§goto(addr89);
            }
            _loc4_ = §§pop();
         }
         §§goto(addr89);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.mName = param1;
         }
      }
      
      public function get menuImage() : String
      {
         return this.§'v§;
      }
      
      public function set menuImage(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§'v§ = param1;
         }
      }
      
      public function get levelsPerPage() : int
      {
         return this.§ !E§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ !E§ = param1;
         }
      }
      
      public function get §4!4§() : Array
      {
         return this.§4A§;
      }
      
      public function get §var §() : Array
      {
         return this.§3!2§;
      }
      
      public function set §var §(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§3!2§ = param1;
         }
      }
      
      public function get §7E§() : int
      {
         return this.§[!6§;
      }
      
      public function set §7E§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() >= 0);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        §§goto(addr54);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     this.§[!6§ = param1;
                  }
               }
               §§goto(addr54);
            }
            §§goto(addr44);
         }
         addr54:
         if(_loc3_)
         {
            addr44:
            §§push(param1 < this.pageIndexes.length);
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§;!#§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§;!#§ = param1;
         }
      }
      
      public function §8!D§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§8c§[param1] = param2;
         }
      }
      
      public function §0!9§(param1:String) : String
      {
         return this.§8c§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§ !A§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§ !A§ = param1;
         }
      }
      
      public function get §7<§() : String
      {
         return this.§,Q§;
      }
      
      public function set §7<§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,Q§ = param1;
         }
      }
      
      public function get §8S§() : String
      {
         return this.§ I§;
      }
      
      public function set §8S§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§ I§ = param1;
         }
      }
      
      public function get writtenName() : String
      {
         return this.§%g§;
      }
      
      public function set writtenName(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%g§ = param1;
         }
      }
   }
}
