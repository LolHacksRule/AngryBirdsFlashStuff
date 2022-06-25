package §_-01E§
{
   public class §_-xz§
   {
      
      private static var §_-es§:§_-xz§;
       
      
      private var §_-GF§:Array;
      
      private var §_-Z1§:Array;
      
      public function §_-xz§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-GF§ = [];
            loop0:
            do
            {
               this.§_-Z1§ = [];
               do
               {
                  super();
                  loop2:
                  while(§_-es§)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     addr76:
                     addr76:
                     while(true)
                     {
                        break loop2;
                     }
                  }
                  while(true)
                  {
                     §_-es§ = this;
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§goto(addr76);
                  }
               }
               while(!(_loc2_ || this));
               
               return;
            }
            while(_loc1_);
            
            throw new Error("Can\'t create more than one instance of a singleton.");
         }
         §§goto(addr76);
      }
      
      public static function get §_-3S§() : §_-xz§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§_-es§);
            if(!(_loc1_ && §_-xz§))
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §_-es§ = new §_-xz§();
                     addr54:
                     §§push(§_-es§);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         §§goto(addr54);
      }
      
      public static function §_-0CB§(param1:Array, param2:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:String = null;
         var _loc3_:Array = param1.concat();
         for each(_loc4_ in param2)
         {
            if(_loc7_ || _loc3_)
            {
               if(_loc3_.indexOf(_loc4_) == -1)
               {
                  if(!_loc8_)
                  {
                     _loc3_.push(_loc4_);
                  }
               }
            }
         }
         return _loc3_;
      }
      
      public function §_-05h§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§_-GF§);
            if(_loc3_ || this)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(§§pop().indexOf(§§pop()) == -1)
                  {
                  }
                  §§goto(addr55);
               }
               §§pop().push(§§pop());
               §§goto(addr55);
            }
            §§goto(addr53);
         }
         addr55:
         if(!(_loc2_ && this))
         {
            addr53:
            §§push(this.§_-GF§);
            §§push(param1);
         }
      }
      
      public function §_-0E0§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§_-GF§);
            if(_loc2_ || _loc2_)
            {
               §§push(param1);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop().indexOf(§§pop()) == -1);
                  if(_loc2_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           addr69:
                           §§pop();
                           return this.§_-Z1§.indexOf(param1) == -1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §_-014§(param1:String) : Boolean
      {
         return this.§_-Z1§.indexOf(param1) == -1;
      }
      
      public function § set§(param1:String) : Boolean
      {
         return this.§_-Z1§.indexOf(param1) == -1;
      }
      
      public function §_-lP§() : Array
      {
         return this.§_-GF§;
      }
      
      public function §_-Fj§() : Array
      {
         return this.§_-Z1§;
      }
      
      public function §_-Hd§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(_loc6_)
            {
               this.§_-05h§(_loc2_);
            }
         }
      }
      
      public function §_-JD§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(_loc5_)
            {
               continue;
            }
            §§push(this.§_-Z1§);
            if(_loc6_)
            {
               §§push(_loc2_);
               if(_loc6_)
               {
                  if(§§pop().indexOf(§§pop()) != -1)
                  {
                     continue;
                  }
                  if(!(_loc6_ || _loc2_))
                  {
                     continue;
                  }
                  addr73:
                  §§push(this.§_-Z1§);
                  §§push(_loc2_);
               }
               §§pop().push(§§pop());
               continue;
            }
            §§goto(addr73);
         }
      }
   }
}
