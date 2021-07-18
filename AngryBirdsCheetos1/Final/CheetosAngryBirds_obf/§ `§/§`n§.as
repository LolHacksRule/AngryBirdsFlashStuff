package § `§
{
   import flash.utils.Dictionary;
   
   public class §`n§ extends §^1§
   {
       
      
      private var §2!L§:Dictionary;
      
      private var §2T§:§^1§;
      
      public function §`n§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§2!L§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function §3j§(param1:String, param2:§^1§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(param2 != null)
            {
               loop0:
               do
               {
                  if(!this.§2T§)
                  {
                     if(_loc4_ || this)
                     {
                        this.§2T§ = param2;
                     }
                     loop1:
                     while(_loc4_)
                     {
                        while(true)
                        {
                           this.§2!L§[param1] = param2;
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr29);
               }
               while(!(_loc4_ || this));
               
               return;
            }
         }
         addr85:
         throw new Error("Trying to add a null animation");
      }
      
      override public function addFrame(param1:§6!=§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2T§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §6!=§
      {
         return this.§2T§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§2T§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §^1§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§2!L§[param1])
            {
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr56);
               }
            }
            return this.§2T§;
         }
         addr56:
         return this.§2!L§[param1];
      }
   }
}
