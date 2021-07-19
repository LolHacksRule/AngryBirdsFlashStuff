package §9t§
{
   import flash.utils.Dictionary;
   
   public class §"N§ extends §"h§
   {
       
      
      private var §'!I§:Dictionary;
      
      private var §9@§:§"h§;
      
      public function §"N§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§'!I§ = new Dictionary();
            do
            {
               super();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §var §(param1:String, param2:§"h§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param2 != null)
            {
               loop0:
               while(true)
               {
                  if(!this.§9@§)
                  {
                     if(!(_loc4_ && param1))
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        this.§9@§ = param2;
                     }
                     loop1:
                     while(true)
                     {
                        addr23:
                        while(true)
                        {
                           this.§'!I§[param1] = param2;
                           if(_loc3_ || _loc3_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        if(!_loc4_)
                        {
                           return;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr23);
               }
            }
            throw new Error("Trying to add a null animation");
         }
         §§goto(addr83);
      }
      
      override public function addFrame(param1:§35§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§9@§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §35§
      {
         return this.§9@§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§9@§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §"h§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§'!I§[param1])
            {
               if(_loc2_)
               {
                  return this.§'!I§[param1];
               }
            }
         }
         return this.§9@§;
      }
   }
}
