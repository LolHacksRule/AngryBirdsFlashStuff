package §<T§
{
   import flash.utils.Dictionary;
   
   public class §1"S§ extends §4!N§
   {
       
      
      private var §>"5§:Dictionary;
      
      private var §!;§:§4!N§;
      
      public function §1"S§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§>"5§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function §-x§(param1:String, param2:§4!N§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2 == null)
            {
               if(!_loc4_)
               {
                  throw new Error("Trying to add a null animation");
               }
               while(true)
               {
                  addr56:
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  return;
                  addr63:
               }
               addr83:
            }
            while(true)
            {
               if(!this.§!;§)
               {
                  if(_loc3_)
                  {
                     while(true)
                     {
                        this.§!;§ = param2;
                     }
                     addr70:
                  }
                  loop2:
                  while(true)
                  {
                     addr23:
                     while(true)
                     {
                        this.§>"5§[param1] = param2;
                        if(!(_loc4_ && this))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     §§goto(addr56);
                  }
               }
               §§goto(addr23);
               §§goto(addr83);
            }
            §§goto(addr63);
         }
         §§goto(addr70);
      }
      
      override public function addFrame(param1:§^"5§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!;§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §^"5§
      {
         return this.§!;§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§!;§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §4!N§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§>"5§[param1])
            {
               if(_loc2_ || this)
               {
                  §§goto(addr40);
               }
            }
            return this.§!;§;
         }
         addr40:
         return this.§>"5§[param1];
      }
   }
}
