package §4[§
{
   public class §8!g§
   {
      
      private static var §%!x§:§8!g§;
       
      
      private var §,!>§:Array;
      
      private var §%!`§:Array;
      
      public function §8!g§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§,!>§ = [];
            loop0:
            while(true)
            {
               this.§%!`§ = [];
               loop1:
               do
               {
                  super();
                  while(true)
                  {
                     if(!§%!x§)
                     {
                        loop3:
                        while(true)
                        {
                           §%!x§ = this;
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                           addr91:
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                        if(_loc2_ || this)
                        {
                           break;
                        }
                     }
                     if(!(_loc1_ && _loc1_))
                     {
                        continue loop1;
                     }
                  }
                  return;
               }
               while(!(_loc2_ || _loc2_));
               
               throw new Error("Can\'t create more than one instance of a singleton.");
            }
         }
         §§goto(addr91);
      }
      
      public static function get §^Z§() : §8!g§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §8!g§)
         {
            §§push(§%!x§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §%!x§ = new §8!g§();
                     addr48:
                     §§push(§%!x§);
                  }
               }
               §§goto(addr48);
            }
            return §§pop();
         }
         §§goto(addr48);
      }
      
      public static function §8S§(param1:Array, param2:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:String = null;
         var _loc3_:Array = param1.concat();
         for each(_loc4_ in param2)
         {
            if(!_loc7_)
            {
               if(_loc3_.indexOf(_loc4_) == -1)
               {
                  if(!(_loc7_ && §8!g§))
                  {
                     _loc3_.push(_loc4_);
                  }
               }
            }
         }
         return _loc3_;
      }
      
      public function §4! §(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§,!>§);
            if(_loc3_ || _loc3_)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(§§pop().indexOf(§§pop()) == -1)
                  {
                  }
                  §§goto(addr50);
               }
               §§pop().push(§§pop());
               §§goto(addr50);
            }
            §§goto(addr48);
         }
         addr50:
         if(_loc3_)
         {
            addr48:
            §§push(this.§,!>§);
            §§push(param1);
         }
      }
      
      public function § b§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§,!>§);
            if(_loc3_)
            {
               §§push(param1);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop().indexOf(§§pop()) == -1);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && param1))
                        {
                           §§pop();
                           addr74:
                           return this.§%!`§.indexOf(param1) == -1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §'f§(param1:String) : Boolean
      {
         return this.§%!`§.indexOf(param1) == -1;
      }
      
      public function §2f§(param1:String) : Boolean
      {
         return this.§%!`§.indexOf(param1) == -1;
      }
      
      public function §0!_§() : Array
      {
         return this.§,!>§;
      }
      
      public function §`!m§() : Array
      {
         return this.§%!`§;
      }
      
      public function §"!P§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(_loc6_ || this)
            {
               this.§4! §(_loc2_);
            }
         }
      }
      
      public function §8!6§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:int = 0;
         for each(_loc2_ in param1)
         {
            if(!(_loc6_ && _loc3_))
            {
               §§push(this.§%!`§);
               if(_loc5_ || this)
               {
                  §§push(_loc2_);
                  if(!(_loc6_ && param1))
                  {
                     if(§§pop().indexOf(§§pop()) != -1)
                     {
                        continue;
                     }
                     if(_loc6_)
                     {
                        continue;
                     }
                     addr82:
                     §§push(this.§%!`§);
                     §§push(_loc2_);
                  }
                  §§pop().push(§§pop());
                  continue;
               }
            }
            §§goto(addr82);
         }
      }
   }
}
