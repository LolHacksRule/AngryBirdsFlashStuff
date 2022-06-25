package §,6§
{
   public class §^!>§
   {
       
      
      private var §=!f§:Vector.<§5z§>;
      
      public function §^!>§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
         do
         {
            this.§=!f§ = new Vector.<§5z§>();
         }
         while(_loc2_);
         
      }
      
      public function addFrame(param1:§5z§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 == null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr51);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr55:
               }
            }
            while(true)
            {
               this.§=!f§.push(param1);
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr55);
            }
            return;
         }
         addr51:
         throw new Error("Trying to add a null frame");
      }
      
      public function getFrame(param1:int) : §5z§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§=!f§.length)
               {
                  addr124:
                  while(true)
                  {
                     §§push(int(this.§=!f§.length - 1));
                     addr129:
                     while(true)
                     {
                        param1 = §§pop();
                        addr130:
                        while(true)
                        {
                        }
                     }
                  }
                  addr124:
               }
               while(true)
               {
                  §§push(param1);
                  continue loop0;
               }
            }
         }
         §§goto(addr124);
      }
      
      public function getFrameCount() : int
      {
         return this.§=!f§.length;
      }
      
      public function getSubAnimation(param1:String) : §^!>§
      {
         return null;
      }
   }
}
