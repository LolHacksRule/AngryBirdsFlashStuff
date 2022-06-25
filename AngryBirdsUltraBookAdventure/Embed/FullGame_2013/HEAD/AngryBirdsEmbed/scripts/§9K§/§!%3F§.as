package §9K§
{
   public class §!?§
   {
       
      
      private var § ]§:Vector.<§,z§>;
      
      public function §!?§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(_loc2_)
            {
               addr28:
               this.§ ]§ = new Vector.<§,z§>();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function addFrame(param1:§,z§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 == null)
            {
               if(!_loc2_)
               {
                  throw new Error("Trying to add a null frame");
               }
            }
            this.§ ]§.push(param1);
         }
      }
      
      public function getFrame(param1:int) : §,z§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_)
            {
               if(§§pop() >= this.§ ]§.length)
               {
                  if(!(_loc3_ && param1))
                  {
                     §§push(int(this.§ ]§.length - 1));
                     if(!_loc3_)
                     {
                        §§goto(addr49);
                     }
                  }
                  §§goto(addr92);
               }
               §§goto(addr52);
            }
            addr49:
            param1 = §§pop();
            if(_loc2_)
            {
               addr52:
               §§push(param1);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() < 0);
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc3_ && this))
                        {
                           §§pop();
                           §§goto(addr101);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr101);
                     }
                  }
                  §§goto(addr101);
               }
               §§goto(addr92);
            }
            return null;
         }
         addr101:
         if(_loc2_ || _loc2_)
         {
            addr92:
            §§push(param1 >= this.§ ]§.length);
         }
         return this.§ ]§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§ ]§.length;
      }
      
      public function getSubAnimation(param1:String) : §!?§
      {
         return null;
      }
   }
}
