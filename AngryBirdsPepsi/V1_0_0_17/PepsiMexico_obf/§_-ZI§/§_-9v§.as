package §_-ZI§
{
   import flash.utils.getTimer;
   
   public class §_-9v§
   {
       
      
      private var mName:String;
      
      private var §_-2T§:String;
      
      private var §_-UA§:String;
      
      private var §_-8U§:String;
      
      private var §_-H5§:uint;
      
      private var §_-rM§:uint;
      
      private var §_-Nj§:uint;
      
      private var § each§:Boolean = false;
      
      public function §_-9v§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               this.§_-Nj§ = getTimer();
            }
         }
      }
      
      public function get §_-Zn§() : Boolean
      {
         return this.§ each§;
      }
      
      public function set §_-Zn§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ each§ = param1;
         }
      }
      
      public function get §_-le§() : String
      {
         return this.§_-8U§;
      }
      
      public function set §_-le§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-8U§ = param1;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mName = param1;
         }
      }
      
      public function get §_-Yv§() : String
      {
         return this.§_-2T§;
      }
      
      public function set §_-Yv§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-2T§ = param1;
         }
      }
      
      public function get password() : String
      {
         return this.§_-UA§;
      }
      
      public function set password(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-UA§ = param1;
         }
      }
      
      public function get §_-VF§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§_-H5§ = getTimer() - this.§_-Nj§;
         }
         return this.§_-H5§;
      }
      
      public function get §_-jX§() : uint
      {
         return this.§_-rM§;
      }
      
      public function set §_-jX§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§_-rM§ = param1;
         }
      }
      
      public function get §_-pp§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§_-le§);
            if(_loc2_)
            {
               §§push(§§pop() == null);
               if(_loc2_)
               {
                  §§push(!§§pop());
                  if(_loc2_)
                  {
                     addr27:
                     if(§§pop())
                     {
                        if(_loc2_ || _loc1_)
                        {
                           §§pop();
                           if(!(_loc1_ && this))
                           {
                              addr53:
                              §§push(this.§_-le§.length > 0);
                              if(_loc2_)
                              {
                                 addr58:
                                 if(§§pop())
                                 {
                                    if(_loc2_ || this)
                                    {
                                    }
                                 }
                                 §§goto(addr83);
                              }
                              §§goto(addr81);
                           }
                           §§push(true);
                           if(_loc1_ && _loc1_)
                           {
                              §§goto(addr83);
                           }
                        }
                        addr81:
                        return §§pop();
                     }
                     §§goto(addr58);
                  }
                  §§goto(addr83);
               }
               §§goto(addr27);
            }
            §§goto(addr53);
         }
         addr83:
         return false;
      }
   }
}
