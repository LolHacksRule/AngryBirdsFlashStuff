package §-w§
{
   import flash.utils.Dictionary;
   
   public class §>!s§ extends §1!;§
   {
       
      
      private var §[%§:Dictionary;
      
      private var §4!j§:§1!;§;
      
      public function §>!s§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§[%§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function §1V§(param1:String, param2:§1!;§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2 != null)
            {
               loop0:
               while(!this.§4!j§)
               {
                  if(_loc3_)
                  {
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     this.§4!j§ = param2;
                     while(true)
                     {
                        break loop0;
                     }
                     addr70:
                  }
                  §§goto(addr70);
               }
               while(true)
               {
                  this.§[%§[param1] = param2;
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr70);
               }
               if(!_loc4_)
               {
                  return;
               }
            }
            throw new Error("Trying to add a null animation");
         }
         §§goto(addr70);
      }
      
      override public function addFrame(param1:§+W§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§4!j§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §+W§
      {
         return this.§4!j§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§4!j§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §1!;§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§[%§[param1])
            {
               if(!_loc2_)
               {
                  return this.§[%§[param1];
               }
            }
         }
         return this.§4!j§;
      }
   }
}
