package §3G§
{
   import §,_§.§4K§;
   import §7!=§.Texture;
   
   public class §91§
   {
       
      
      private var §^j§:§4K§;
      
      private var §='§:Number;
      
      public function §91§(param1:Texture, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            if(_loc4_ || param1)
            {
               this.§^j§ = new §4K§(param1);
               if(!_loc3_)
               {
                  addr45:
                  this.§='§ = param2;
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function get image() : §4K§
      {
         return this.§^j§;
      }
      
      public function get lifeTime() : Number
      {
         return this.§='§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§^j§);
            if(_loc1_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr33);
            }
            §§pop().dispose();
            if(!_loc2_)
            {
               this.§^j§ = null;
            }
         }
         addr33:
         if(_loc1_)
         {
            §§push(this.§^j§);
         }
      }
      
      public function updateLifeTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§='§);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§='§ = §§pop();
         }
      }
      
      public function §%L§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§='§ = param1;
         }
      }
      
      public function §"A§(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^j§.texture = param1;
         }
      }
   }
}
