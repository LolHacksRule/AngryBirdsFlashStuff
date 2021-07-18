package §,"N§
{
   import flash.utils.Dictionary;
   
   public class §=!1§
   {
       
      
      private var §@"D§:Dictionary;
      
      private var §=""§:Dictionary;
      
      private var §<!3§:Dictionary;
      
      private var §+#!§:Dictionary;
      
      private var §#@§:Dictionary;
      
      private var §?!S§:String;
      
      public function §=!1§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@"D§ = new Dictionary();
            loop0:
            while(true)
            {
               this.§=""§ = new Dictionary();
               while(true)
               {
                  this.§<!3§ = new Dictionary();
                  continue loop0;
                  loop5:
                  while(_loc2_ || _loc2_)
                  {
                     this.§?!S§ = param1;
                     if(!_loc2_)
                     {
                        continue;
                     }
                     addr29:
                     if(_loc2_ || param1)
                     {
                        addr36:
                        if(!(_loc3_ && this))
                        {
                           return;
                           addr43:
                        }
                        continue loop0;
                     }
                     addr78:
                     while(!_loc3_)
                     {
                        super();
                        continue loop5;
                        §§goto(addr29);
                     }
                     while(true)
                     {
                        this.§#@§ = new Dictionary();
                        §§goto(addr70);
                     }
                     addr70:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public static function §2#T§(param1:Array, param2:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:String = null;
         var _loc3_:Array = param1.concat();
         for each(_loc4_ in param2)
         {
            if(_loc8_ || param2)
            {
               if(_loc3_.indexOf(_loc4_) != -1)
               {
                  continue;
               }
               if(!(_loc8_ || param2))
               {
                  continue;
               }
            }
            _loc3_.push(_loc4_);
         }
         return _loc3_;
      }
      
      public function §^#K§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§<!3§[param1] = param1;
         }
      }
      
      public function §!7§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=""§[param1] = new Date().time;
         }
      }
      
      public function §3!8§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§#@§[param1] = param1;
         }
      }
      
      public function §4T§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§@"D§[param1] = param1;
         }
      }
      
      public function §%#-§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§+#!§[param1])
            {
               loop0:
               do
               {
                  if(!this.§=""§[param1])
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(new Date().time - this.§=""§[param1]);
                     §§push(1000 * 60);
                     if(_loc3_)
                     {
                        §§push(§§pop() * 60);
                     }
                     if(§§pop() <= §§pop())
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        if(!(_loc2_ && this))
                        {
                           addr69:
                           §§push(true);
                           if(!_loc3_)
                           {
                              §§goto(addr103);
                           }
                           if(_loc3_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr120:
                           return false;
                        }
                        return §§pop();
                     }
                     if(!(_loc2_ && param1))
                     {
                        if(!(_loc2_ && param1))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§push(false);
                  if(_loc3_ || this)
                  {
                     return §§pop();
                  }
                  §§goto(addr69);
               }
               while(!(_loc3_ || _loc2_));
               
               addr103:
               return §§pop();
               §§push(true);
            }
            §§goto(addr120);
         }
         §§goto(addr69);
      }
      
      public function §'!H§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§@"D§[param1] == null);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr61:
                     §§pop();
                     return this.§+#!§[param1] == null;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §]"[§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§+#!§[param1] == null);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr61:
                     §§pop();
                     return this.§<!3§[param1] == null;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §[!D§(param1:String) : Boolean
      {
         return this.§+#!§[param1] == null;
      }
      
      public function §@"%§(param1:String) : Boolean
      {
         return this.§#@§[param1] == null;
      }
      
      public function §##$§() : Dictionary
      {
         return this.§=""§;
      }
      
      public function §^!6§() : Dictionary
      {
         return this.§+#!§;
      }
      
      public function §2"x§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(_loc5_)
            {
               this.§!7§(_loc2_);
            }
         }
      }
      
      public function §>E§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(_loc6_)
            {
               if(this.§+#!§[_loc2_] != null)
               {
                  continue;
               }
               if(!_loc6_)
               {
                  continue;
               }
            }
            this.§+#!§[_loc2_] = _loc2_;
         }
      }
   }
}
