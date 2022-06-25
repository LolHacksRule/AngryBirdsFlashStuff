package §40§
{
   import §?]§.Texture;
   import §`g§.§"<§;
   
   public class §"e§
   {
       
      
      private var §?!F§:§"<§;
      
      private var §4!P§:Number;
      
      public function §"e§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super();
            while(true)
            {
               this.§?!F§ = new §"<§(param1);
               loop1:
               while(!(_loc3_ && param2))
               {
                  while(true)
                  {
                     this.§4!P§ = param2;
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function get image() : §"<§
      {
         return this.§?!F§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§4!P§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§?!F§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr70:
                     this.§?!F§.dispose();
                  }
                  do
                  {
                     this.§?!F§ = null;
                  }
                  while(!_loc2_);
                  
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this);
            §§push(this.§4!P§);
            if(_loc2_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§4!P§ = §§pop();
         }
      }
      
      public function §8#§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§4!P§ = param1;
         }
      }
      
      public function §]o§(param1:Texture) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!F§.texture = param1;
         }
      }
   }
}
