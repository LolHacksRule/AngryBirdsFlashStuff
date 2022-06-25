package §^!Y§
{
   import flash.utils.Dictionary;
   
   public class § 4§ extends §4!f§
   {
       
      
      private var § s§:Dictionary;
      
      private var §8i§:§4!f§;
      
      public function § 4§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§ s§ = new Dictionary();
            do
            {
               super();
            }
            while(!_loc1_);
            
         }
      }
      
      public function §,!m§(param1:String, param2:§4!f§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(param2 != null)
            {
               loop0:
               do
               {
                  if(!this.§8i§)
                  {
                     if(!_loc3_)
                     {
                        this.§8i§ = param2;
                     }
                     loop1:
                     while(_loc4_ || _loc3_)
                     {
                        while(true)
                        {
                           this.§ s§[param1] = param2;
                           if(!(_loc3_ && param2))
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
               while(_loc3_);
               
               return;
            }
         }
         addr85:
         throw new Error("Trying to add a null animation");
      }
      
      override public function addFrame(param1:§1C§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8i§.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §1C§
      {
         return this.§8i§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§8i§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §4!f§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§ s§[param1])
            {
               if(_loc3_)
               {
                  §§goto(addr41);
               }
            }
            return this.§8i§;
         }
         addr41:
         return this.§ s§[param1];
      }
   }
}
