package §_-Ra§
{
   public class §_-RO§
   {
       
      
      private var §_-TW§:Vector.<§_-Vr§>;
      
      public function §_-RO§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc1_)
            {
               addr31:
               this.§_-TW§ = new Vector.<§_-Vr§>();
            }
            return;
         }
         §§goto(addr31);
      }
      
      public function addFrame(param1:§_-Vr§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 == null)
            {
               if(!_loc3_)
               {
                  §§goto(addr27);
               }
            }
            else
            {
               this.§_-TW§.push(param1);
            }
            return;
         }
         addr27:
         throw new Error("Trying to add a null frame");
      }
      
      public function getFrame(param1:int) : §_-Vr§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop() >= this.§_-TW§.length)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr35:
                     §§push(int(this.§_-TW§.length - 1));
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr54);
                     }
                     §§goto(addr87);
                  }
               }
               §§goto(addr62);
            }
            addr54:
            param1 = §§pop();
            if(_loc3_ || _loc2_)
            {
               addr62:
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() < 0);
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§pop();
                           §§goto(addr103);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        return null;
                     }
                  }
               }
               §§goto(addr87);
            }
            addr103:
            if(!(_loc2_ && this))
            {
               addr87:
               §§push(param1 >= this.§_-TW§.length);
            }
            return this.§_-TW§[param1];
         }
         §§goto(addr35);
      }
      
      public function getFrameCount() : int
      {
         return this.§_-TW§.length;
      }
      
      public function getSubAnimation(param1:String) : §_-RO§
      {
         return null;
      }
   }
}
