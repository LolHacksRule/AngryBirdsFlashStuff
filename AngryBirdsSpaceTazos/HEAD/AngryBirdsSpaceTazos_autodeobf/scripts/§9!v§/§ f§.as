package §9!v§
{
   import §&!]§.DisplayObject;
   import §&!]§.Sprite;
   
   public class § f§ extends § "<§
   {
       
      
      private var §@k§:§6a§;
      
      private var §^!]§:String;
      
      public function § f§(param1:String, param2:§6a§, param3:Number)
      {
         super(param3);
         this.§^!]§ = param1;
         this.§@k§ = param2;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:Sprite = param1 as Sprite;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
         }
         return §8M§.§#!&§(this.§^!]§,this.§@k§,_loc2_);
      }
   }
}
