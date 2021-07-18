package §4W§
{
   import flash.utils.Dictionary;
   
   public class §5!6§ extends §2f§
   {
       
      
      private var §2p§:Dictionary;
      
      private var §@!X§:§2f§;
      
      public function §5!6§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§2p§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(_loc1_);
         
      }
      
      public function §"=§(param1:String, param2:§2f§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(param2 != null)
            {
               do
               {
                  if(!this.§@!X§)
                  {
                     while(true)
                     {
                        this.§@!X§ = param2;
                        §§goto(addr64);
                     }
                     addr61:
                  }
                  while(true)
                  {
                     this.§2p§[param1] = param2;
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        §§goto(addr61);
                     }
                     addr64:
                     §§goto(addr80);
                  }
               }
               while(_loc3_ && this);
               
               return;
               addr56:
            }
            addr80:
            while(!_loc3_)
            {
            }
            throw new Error("Trying to add a null animation");
         }
         §§goto(addr56);
      }
      
      override public function addFrame(param1:§>c§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§@!X§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §>c§
      {
         return this.§@!X§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§@!X§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §2f§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§2p§[param1])
            {
               if(_loc2_ || this)
               {
                  return this.§2p§[param1];
               }
            }
         }
         return this.§@!X§;
      }
   }
}
