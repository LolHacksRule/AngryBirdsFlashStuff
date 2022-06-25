package §,6§
{
   import flash.utils.Dictionary;
   
   public class §1V§ extends §^!>§
   {
       
      
      private var §`!'§:Dictionary;
      
      private var §`! §:§^!>§;
      
      public function §1V§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§`!'§ = new Dictionary();
            do
            {
               super();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §,!x§(param1:String, param2:§^!>§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param2 == null)
            {
               if(_loc4_)
               {
                  §§goto(addr75);
               }
               else
               {
                  while(true)
                  {
                     addr54:
                     if(!(_loc4_ || _loc3_))
                     {
                        continue;
                     }
                     return;
                     addr61:
                  }
                  addr79:
               }
            }
            while(true)
            {
               if(!this.§`! §)
               {
                  while(true)
                  {
                     this.§`! § = param2;
                     addr69:
                     while(true)
                     {
                     }
                  }
                  addr66:
               }
               while(true)
               {
                  this.§`!'§[param1] = param2;
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr66);
               }
               §§goto(addr54);
               §§goto(addr79);
            }
            §§goto(addr61);
         }
         addr75:
         throw new Error("Trying to add a null animation");
      }
      
      override public function addFrame(param1:§5z§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`! §.addFrame(param1);
         }
      }
      
      override public function getFrame(param1:int) : §5z§
      {
         return this.§`! §.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§`! §.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §^!>§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§`!'§[param1])
            {
               if(!_loc2_)
               {
                  §§goto(addr41);
               }
            }
            return this.§`! §;
         }
         addr41:
         return this.§`!'§[param1];
      }
   }
}
