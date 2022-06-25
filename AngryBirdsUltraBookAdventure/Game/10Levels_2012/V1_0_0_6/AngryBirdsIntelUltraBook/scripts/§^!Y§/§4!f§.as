package §^!Y§
{
   public class §4!f§
   {
       
      
      private var §+!R§:Vector.<§1C§>;
      
      public function §4!f§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            do
            {
               this.§+!R§ = new Vector.<§1C§>();
            }
            while(_loc1_);
            
         }
      }
      
      public function addFrame(param1:§1C§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 == null)
            {
               if(!(_loc2_ && this))
               {
                  throw new Error("Trying to add a null frame");
               }
               addr71:
               while(true)
               {
               }
               addr71:
            }
            while(true)
            {
               this.§+!R§.push(param1);
               if(_loc3_ || _loc2_)
               {
                  break;
               }
               §§goto(addr71);
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function getFrame(param1:int) : §1C§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§+!R§.length)
               {
                  if(_loc3_)
                  {
                     §§push(int(this.§+!R§.length - 1));
                     while(true)
                     {
                        param1 = §§pop();
                        addr116:
                        while(true)
                        {
                        }
                     }
                     addr115:
                  }
                  §§goto(addr116);
               }
               while(true)
               {
                  §§push(param1);
                  addr71:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     §§goto(addr115);
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      public function getFrameCount() : int
      {
         return this.§+!R§.length;
      }
      
      public function getSubAnimation(param1:String) : §4!f§
      {
         return null;
      }
   }
}
