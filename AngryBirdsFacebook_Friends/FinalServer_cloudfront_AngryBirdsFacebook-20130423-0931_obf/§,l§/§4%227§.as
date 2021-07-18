package §,l§
{
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class §4"7§
   {
      
      private static var §+!Y§:§4"7§;
       
      
      private var §'2§:Array;
      
      private var §@!!§:Dictionary;
      
      private var §&"!§:Dictionary;
      
      public function §4"7§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§'2§ = [];
            loop0:
            while(true)
            {
               this.§@!!§ = new Dictionary();
               while(true)
               {
                  this.§&"!§ = new Dictionary();
                  continue loop0;
                  addr68:
                  if(_loc1_ || _loc1_)
                  {
                     loop5:
                     while(true)
                     {
                        §+!Y§ = this;
                        if(!(_loc2_ && _loc1_))
                        {
                           break;
                        }
                        addr66:
                        while(!_loc2_)
                        {
                           §§goto(addr68);
                           continue loop5;
                        }
                        continue loop0;
                     }
                     return;
                     addr23:
                  }
               }
            }
         }
         do
         {
            if(§+!Y§)
            {
               if(_loc1_ || this)
               {
                  continue;
               }
               §§goto(addr66);
            }
            §§goto(addr23);
         }
         while(_loc2_ && _loc1_);
         
         throw new Error("Can\'t create more than one instance of a singleton.");
      }
      
      public static function get §&"5§() : §4"7§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§+!Y§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr24:
                     §+!Y§ = new §4"7§();
                  }
               }
               return §+!Y§;
            }
         }
         §§goto(addr24);
      }
      
      public static function §&!z§(param1:Array, param2:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:String = null;
         var _loc3_:Array = param1.concat();
         for each(_loc4_ in param2)
         {
            if(_loc8_)
            {
               if(_loc3_.indexOf(_loc4_) != -1)
               {
                  continue;
               }
               if(_loc7_ && param1)
               {
                  continue;
               }
            }
            _loc3_.push(_loc4_);
         }
         return _loc3_;
      }
      
      public function §0!Q§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§@!!§[param1] == null)
            {
               if(!_loc3_)
               {
                  addr41:
                  this.§@!!§[param1] = param1;
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §^8§(param1:String, param2:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:SharedObject = null;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§'2§);
            if(_loc6_)
            {
               §§push(param1);
               if(_loc6_ || this)
               {
                  if(§§pop().indexOf(§§pop()) == -1)
                  {
                     if(_loc6_ || param2)
                     {
                        addr62:
                        this.§'2§.push(param1);
                        if(!(_loc5_ && param2))
                        {
                           §§goto(addr70);
                        }
                     }
                     §§goto(addr72);
                  }
                  addr70:
                  if(!param2)
                  {
                     try
                     {
                        addr72:
                        _loc3_ = SharedObject.getLocal(§%"S§.§@!I§(),§%"S§.override);
                        if(_loc6_)
                        {
                           _loc3_.data.excludedChallenges = this.§'2§;
                           if(!(_loc5_ && param2))
                           {
                              addr104:
                              _loc3_.flush();
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr104);
                     }
                     catch(e:Error)
                     {
                     }
                  }
                  addr118:
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §[>§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§@!!§[param1] == null);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr51:
                     §§pop();
                     return this.§&"!§[param1] == null;
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §>!Z§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§'2§.indexOf(param1) == -1);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     addr42:
                     return this.§&"!§[param1] == null;
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      public function §,'§(param1:String) : Boolean
      {
         return this.§&"!§[param1] == null;
      }
      
      public function §6u§(param1:String) : Boolean
      {
         return this.§&"!§[param1] == null;
      }
      
      public function §+V§() : Array
      {
         return this.§'2§;
      }
      
      public function §9"T§() : Dictionary
      {
         return this.§@!!§;
      }
      
      public function §4!h§() : Dictionary
      {
         return this.§&"!§;
      }
      
      public function §1!N§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         for(_loc1_ in this.§&"!§)
         {
            if(!(_loc5_ && _loc2_))
            {
               return false;
            }
         }
         return true;
      }
      
      public function §]!%§(param1:Array) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:SharedObject = null;
         var _loc2_:Array = [];
         try
         {
            if((_loc4_ = SharedObject.getLocal(§%"S§.§@!I§(),§%"S§.override)).data.excludedChallenges != undefined)
            {
               if(_loc8_ || _loc3_)
               {
                  _loc2_ = _loc4_.data.excludedChallenges;
                  addr73:
                  var _loc5_:int = 0;
                  if(_loc8_)
                  {
                     var _loc6_:* = _loc2_;
                     if(!_loc8_)
                     {
                     }
                     for each(_loc3_ in _loc6_)
                     {
                        if(!(_loc7_ && param1))
                        {
                           this.§^8§(_loc3_,true);
                        }
                     }
                  }
                  addr61:
               }
               return;
            }
            §§goto(addr61);
         }
         catch(e:Error)
         {
         }
         §§goto(addr73);
      }
      
      public function §5"8§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!(_loc5_ && this))
            {
               this.§0!Q§(_loc2_);
            }
         }
      }
      
      public function §39§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!_loc5_)
            {
               if(this.§&"!§[_loc2_] == null)
               {
                  if(!(_loc5_ && this))
                  {
                     this.§&"!§[_loc2_] = _loc2_;
                  }
               }
            }
         }
      }
   }
}
