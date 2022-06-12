package §]!>§
{
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §0!!§
   {
      
      private static var §2"<§:§0!!§;
       
      
      private var §1h§:Array;
      
      private var §^H§:Dictionary;
      
      private var §+?§:Dictionary;
      
      public function §0!!§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§1h§ = [];
         }
         loop0:
         while(true)
         {
            this.§^H§ = new Dictionary();
            loop1:
            while(true)
            {
               this.§+?§ = new Dictionary();
               loop2:
               while(true)
               {
                  super();
                  while(_loc2_)
                  {
                     continue loop0;
                     if(_loc2_ || _loc2_)
                     {
                        if(_loc2_)
                        {
                           return;
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public static function get §;"§() : §0!!§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §0!!§)
         {
            §§push(§2"<§);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr45:
                     §2"<§ = new §0!!§();
                  }
               }
               return §2"<§;
            }
         }
         §§goto(addr45);
      }
      
      public static function §+K§(param1:Array, param2:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:String = null;
         var _loc3_:Array = param1.concat();
         for each(_loc4_ in param2)
         {
            if(!_loc8_)
            {
               if(_loc3_.indexOf(_loc4_) != -1)
               {
                  continue;
               }
               if(!(_loc7_ || §0!!§))
               {
                  continue;
               }
            }
            _loc3_.push(_loc4_);
         }
         return _loc3_;
      }
      
      public function §[!i§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§^H§[param1] == null)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr41:
                  this.§^H§[param1] = param1;
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §=[§(param1:String, param2:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:SharedObject = null;
         if(_loc5_ || param2)
         {
            §§push(this.§1h§);
            if(!(_loc6_ && param1))
            {
               §§push(param1);
               if(_loc5_ || param1)
               {
                  if(§§pop().indexOf(§§pop()) == -1)
                  {
                     if(_loc5_ || param1)
                     {
                        addr66:
                        this.§1h§.push(param1);
                        if(_loc5_)
                        {
                           §§goto(addr69);
                        }
                     }
                     §§goto(addr71);
                  }
                  addr69:
                  if(!param2)
                  {
                     try
                     {
                        addr71:
                        _loc3_ = SharedObject.getLocal(§3T§.§"3§(),§3T§.§;b§);
                        if(!(_loc6_ && param1))
                        {
                           _loc3_.data.excludedChallenges = this.§1h§;
                           if(!(_loc6_ && this))
                           {
                              _loc3_.flush();
                           }
                        }
                     }
                     catch(e:Error)
                     {
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §>!Y§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§^H§[param1] == null);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     §§pop();
                     addr51:
                     return this.§+?§[param1] == null;
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §;">§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§1h§.indexOf(param1) == -1);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     addr47:
                     return this.§+?§[param1] == null;
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §>1§(param1:String) : Boolean
      {
         return this.§+?§[param1] == null;
      }
      
      public function §@!u§(param1:String) : Boolean
      {
         return this.§+?§[param1] == null;
      }
      
      public function §8"$§() : Array
      {
         return this.§1h§;
      }
      
      public function §'+§() : Dictionary
      {
         return this.§^H§;
      }
      
      public function §4!Z§() : Dictionary
      {
         return this.§+?§;
      }
      
      public function §2I§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = undefined;
         for(_loc1_ in this.§+?§)
         {
            if(!_loc5_)
            {
               return false;
            }
         }
         return true;
      }
      
      public function §6!O§(param1:Array) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:SharedObject = null;
         var _loc2_:Array = [];
         try
         {
            if((_loc4_ = SharedObject.getLocal(§3T§.§"3§(),§3T§.§;b§)).data.excludedChallenges != undefined)
            {
               if(_loc7_ || this)
               {
                  _loc2_ = _loc4_.data.excludedChallenges;
               }
               §§goto(addr118);
            }
            addr72:
            var _loc5_:int = 0;
            if(!(_loc8_ && this))
            {
               var _loc6_:* = _loc2_;
               if(_loc7_ || param1)
               {
                  for each(_loc3_ in _loc6_)
                  {
                     if(_loc8_)
                     {
                        continue;
                     }
                  }
                  addr117:
                  addr118:
                  return;
                  addr114:
               }
               while(true)
               {
                  this.§=[§(_loc3_,true);
                  §§goto(addr114);
               }
            }
            §§goto(addr117);
         }
         catch(e:Error)
         {
            §§goto(addr72);
         }
         §§goto(addr118);
      }
      
      public function §;!2§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!(_loc6_ && param1))
            {
               this.§[!i§(_loc2_);
            }
         }
      }
      
      public function §]L§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!(_loc5_ && param1))
            {
               if(this.§+?§[_loc2_] != null)
               {
                  continue;
               }
               if(!_loc6_)
               {
                  continue;
               }
            }
            this.§+?§[_loc2_] = _loc2_;
         }
      }
   }
}
